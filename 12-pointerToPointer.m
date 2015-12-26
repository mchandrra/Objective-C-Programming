#import <Foundation/Foundation.h>
 
int main ()
{
   int  var;
   int  *ptr;
   int  **pptr;

   var = 3000;

   /* take the address of var */
   ptr = &var;

   /* take the address of ptr using address of operator & */
   pptr = &ptr;

   /* take the value using pptr */
   NSLog(@"Value of var = %d\n", var );
   NSLog(@"Value available at *ptr = %d\n", *ptr );
   NSLog(@"Value available at **pptr = %d\n", **pptr);

   return 0;
}
