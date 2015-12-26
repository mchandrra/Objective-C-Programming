#import <Foundation/Foundation.h>
 
@interface SampleClass:NSObject

/* function declaration */
-(double) getAverage:(int []) arr andSize:(int) size;

@end

@implementation SampleClass

-(double) getAverage:(int []) arr andSize:(int) size
{
  int    i;
  double avg;
  double sum =0;

  for (i = 0; i < size; ++i)
  {
    sum += arr[i];
  }

  avg = sum / size;

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
   avg = [sampleClass getAverage:balance andSize: 5] ;
 
   /* output the returned value */
   NSLog( @"Average value is: %f ", avg );
    
   return 0;
}
