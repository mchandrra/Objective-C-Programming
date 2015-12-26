#import <Foundation/Foundation.h>

@interface SampleClass:NSObject

- (int *) getRandom;

@end

@implementation SampleClass

/* function to generate and return random numbers */
- (int *) getRandom
{
  static int  r[10];
  int i;

  /* set the seed */
  srand( (unsigned)time( NULL ) );
  for ( i = 0; i < 10; ++i)
  {
     r[i] = rand();
     NSLog( @"r[%d] = %d\n", i, r[i]);

  }

  return r;
}

@end

/* main function to call above defined function */
int main ()
{
   /* a pointer to an int */
   int *p;
   int i;

   SampleClass *sampleClass = [[SampleClass alloc]init];
   p = [sampleClass getRandom];
   for ( i = 0; i < 10; i++ )
   {
       NSLog( @"*(p + %d) : %d\n", i, *(p + i));
   }

   return 0;
}

