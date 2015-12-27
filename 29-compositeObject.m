#import <Foundation/Foundation.h>

@interface ValidatingArray : NSMutableArray
{
    NSMutableArray *embeddedArray;
}

+ validatingArray;
- init;
- (unsigned)count;
- objectAtIndex:(unsigned)index;
- (void)addObject:object;
- (void)replaceObjectAtIndex:(unsigned)index withObject:object;
- (void)removeLastObject;
- (void)insertObject:object atIndex:(unsigned)index;
- (void)removeObjectAtIndex:(unsigned)index;

@end

@implementation ValidatingArray
- init
{
   self = [super init];
   if (self) {
      embeddedArray = [[NSMutableArray allocWithZone:[self zone]] init];
   }
   return self;
}

+ validatingArray
{
   return [[self alloc] init] ;
}
- (unsigned)count
{
   return [embeddedArray count];
}
- objectAtIndex:(unsigned)index
{
    return [embeddedArray objectAtIndex:index];
}
- (void)addObject:(id)object
{
   if (object != nil) {
      [embeddedArray addObject:object];
   }
}
- (void)replaceObjectAtIndex:(unsigned)index withObject:(id)object;
{
   if (index <[embeddedArray count] && object != nil) {
       [embeddedArray replaceObjectAtIndex:index withObject:object];
   }
}
- (void)removeLastObject;
{
   if ([embeddedArray count] > 0) {
       [embeddedArray removeLastObject];
   }
}
- (void)insertObject:(id)object atIndex:(unsigned)index;
{
   if (object != nil) {
       [embeddedArray insertObject:object atIndex:index];
   }
}
- (void)removeObjectAtIndex:(unsigned)index;
{
   if (index <[embeddedArray count]) {
       [embeddedArray removeObjectAtIndex:index];
   }
}

@end

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   ValidatingArray *validatingArray = [ValidatingArray validatingArray];
   [validatingArray addObject:@"Object1"];
   [validatingArray addObject:@"Object2"];
   [validatingArray addObject:[NSNull null]];
   [validatingArray removeObjectAtIndex:2];
   NSString *aString = [validatingArray objectAtIndex:1];
   NSLog(@"The value at Index 1 is %@",aString);
   [pool drain];
   return 0;
}
