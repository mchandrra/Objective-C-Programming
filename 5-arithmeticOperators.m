#import <Foundation/Foundation.h>

main()
{
   int a = 21;
   int b = 10;
   int c ;

   c = a + b;
   NSLog(@"Line 1 - Value of c is %d\n", c );
   c = a - b;
   NSLog(@"Line 2 - Value of c is %d\n", c );
   c = a * b;
   NSLog(@"Line 3 - Value of c is %d\n", c );
   c = a / b;
   NSLog(@"Line 4 - Value of c is %d\n", c );
   c = a % b;
   NSLog(@"Line 5 - Value of c is %d\n", c );
   c = a++; 
   NSLog(@"Line 6 - Value of c is %d\n", c );
   c = a--; 
   NSLog(@"Line 7 - Value of c is %d\n", c );

}














