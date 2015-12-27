#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSSet *set = [[NSSet alloc]
   initWithObjects:@"string1", @"string2",@"string3",nil];
   NSArray *setArray = [set allObjects];
   NSLog(@"The objects in set are %@",setArray);
   NSMutableSet *mutableSet = [[NSMutableSet alloc]init];
   [mutableSet addObject:@"string1"];
   setArray = [mutableSet allObjects];
   NSLog(@"The objects in mutableSet are %@",setArray);
   [pool drain];
   return 0;
}
