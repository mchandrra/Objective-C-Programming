#import <Foundation/Foundation.h>

main()
{
   int a = 21;
   int b = 10;
   int c ;

   if( a == b )
   {
      NSLog(@"Line 1 - a is equal to b\n" );
   }
   else
   {
      NSLog(@"Line 1 - a is not equal to b\n" );
   }
   if ( a < b )
   {
      NSLog(@"Line 2 - a is less than b\n" );
   }
   else
   {
      NSLog(@"Line 2 - a is not less than b\n" );
   }
   if ( a > b )
   {
      NSLog(@"Line 3 - a is greater than b\n" );
   }
   else
   {
      NSLog(@"Line 3 - a is not greater than b\n" );
   }
   /* Lets change value of a and b */
   a = 5;
   b = 20;
   if ( a <= b )
   {
      NSLog(@"Line 4 - a is either less than or equal to  b\n" );
   }
   if ( b >= a )
   {
      NSLog(@"Line 5 - b is either greater than  or equal to b\n" );
   }
}
