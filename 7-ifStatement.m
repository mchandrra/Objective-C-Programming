#import <Foundation/Foundation.h>
 
int main ()
{
   /* local variable definition */
   int a = 10;
 
   /* check the boolean condition using if statement */
   if( a < 20 )
   {
       /* if condition is true then print the following */
       NSLog(@"a is less than 20\n" );
   }
   NSLog(@"value of a is : %d\n", a);
 
   return 0;
}
