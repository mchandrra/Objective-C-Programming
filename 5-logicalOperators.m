#import <Foundation/Foundation.h>

main()
{
   int a = 5;
   int b = 20;
   int c ;

   if ( a && b )
   {
      NSLog(@"Line 1 - Condition is true\n" );
   }
   if ( a || b )
   {
      NSLog(@"Line 2 - Condition is true\n" );
   }
   /* lets change the value of  a and b */
   a = 0;
   b = 10;
   if ( a && b )
   {
      NSLog(@"Line 3 - Condition is true\n" );
   }
   else
   {
      NSLog(@"Line 4 - Condition is not true\n" );
   }
   if ( !(a && b) )
   {
      NSLog(@"Line 5 - Condition is true\n" );
   }
}
