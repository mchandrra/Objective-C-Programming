#import <Foundation/Foundation.h>
 
@interface SampleClass:NSObject
/* function declaration */
- (double) getAverage:(int *)arr ofSize:(int) size;
@end

@implementation SampleClass

- (double) getAverage:(int *)arr ofSize:(int) size
{
  int    i, sum = 0;       
  double avg;          
 
  for (i = 0; i < size; ++i)
  {
    sum += arr[i];
  }
 
  avg = (double)sum / size;
 
  return avg;
}

@end
 
int main ()
{
   /* an int array with 5 elements */
   int balance[5] = {1000, 2, 3, 17, 50};
   double avg;
 
   SampleClass *sampleClass = [[SampleClass alloc]init];
   /* pass pointer to the array as an argument */
   avg = [sampleClass getAverage: balance ofSize: 5 ] ;
 
   /* output the returned value  */
   NSLog(@"Average value is: %f\n", avg );
    
   return 0;
}
