#import <Foundation/Foundation.h>

int main()
{
   int  i = 17;
   char c = 'c'; /* ascii value is 99 */
   CGFloat sum;

   sum = i + c;
   NSLog(@"Value of sum : %f\n", sum );
   return 0;
}

/*
Here, it is simple to understand that first c gets converted to integer but because final value is float, so usual arithmetic conversion applies and compiler converts i and c into float and add them yielding a float result. */

/*

Usual Arithmetic Conversion
The usual arithmetic conversions are implicitly performed to cast their values in a common type. Compiler first performs integer promotion, if operands still have different types then they are converted to the type that appears highest in the hierarchy.

The usual arithmetic conversions are not performed for the assignment operators, nor for the logical operators && and ||.

*/
