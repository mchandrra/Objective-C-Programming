#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSMutableArray *array = [[NSMutableArray alloc]init];        
   @try 
   {
      NSString *string = [array objectAtIndex:10];
   }
   @catch (NSException *exception) 
   {
      NSLog(@"%@ ",exception.name);
      NSLog(@"Reason: %@ ",exception.reason);
   }
   @finally 
   {
      NSLog(@"@@finaly Always Executes");
   }
   [pool drain];
   return 0;
}

