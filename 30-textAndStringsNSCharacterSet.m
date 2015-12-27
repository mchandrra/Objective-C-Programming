#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSString *string = @"....chandrra.....";
   NSLog(@"Initial String :%@", string);
   NSCharacterSet *characterset = [NSCharacterSet punctuationCharacterSet];
   string = [string stringByTrimmingCharactersInSet:characterset];
   NSLog(@"Final String :%@", string);
   [pool drain];
   return 0;
}
