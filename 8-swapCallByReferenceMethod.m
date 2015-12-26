#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
/* method declaration */
- (void)swap:(int *)num1 andNum2:(int *)num2;
@end

@implementation SampleClass

- (void)swap:(int *)num1 andNum2:(int *)num2
{
   int temp;

   temp = *num1; /* save the value of num1 */
   *num1 = *num2;    /* put num2 into num1 */
   *num2 = temp; /* put temp into num2 */
  
   return;
   
}

@end

int main ()
{
   /* local variable definition */
   int a = 100;
   int b = 200;
   
   SampleClass *sampleClass = [[SampleClass alloc]init];

   NSLog(@"Before swap, value of a : %d\n", a );
   NSLog(@"Before swap, value of b : %d\n", b );
 
   /* calling a function to swap the values */
   [sampleClass swap:&a andNum2:&b];
 
   NSLog(@"After swap, value of a : %d\n", a );
   NSLog(@"After swap, value of b : %d\n", b );
 
   return 0;
}
