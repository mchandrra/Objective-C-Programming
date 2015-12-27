#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSArray *array = [[NSArray alloc]
   initWithObjects:@"string1", @"string2",@"string3",nil];
   for(NSString *aString in array)
   {
      NSLog(@"Value: %@",aString);
   }
   [pool drain];
   return 0;
}
