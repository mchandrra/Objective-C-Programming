#import <Foundation/Foundation.h>
 
@interface SampleClass:NSObject
- (void) getSeconds:(int *)par;

@end
@implementation SampleClass

- (void) getSeconds:(int *)par{
 /* get the current number of seconds */
   *par = time( NULL );
   return;
}

@end

int main ()
{
   int sec;

   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass getSeconds:&sec];

   /* print the actual value */
   NSLog(@"Number of seconds: %d\n", sec );

   return 0;
}
