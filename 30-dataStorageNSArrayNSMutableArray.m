#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSArray *array = [[NSArray alloc]
   initWithObjects:@"string1", @"string2",@"string3",nil];
   NSString *string1 = [array objectAtIndex:0];
   NSLog(@"The object in array at Index 0 is %@",string1);
   NSMutableArray *mutableArray = [[NSMutableArray alloc]init];
   [mutableArray addObject: @"string"];
   string1 = [mutableArray objectAtIndex:0];
   NSLog(@"The object in mutableArray at Index 0 is %@",string1); 
   [pool drain];
   return 0;
}
