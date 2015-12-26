#import <Foundation/Foundation.h>

main()
{
   int a = 4;
   short b;
   double c;
   int* ptr;

   /* example of sizeof operator */
   NSLog(@"Line 1 - Size of variable a = %d\n", sizeof(a) );
   NSLog(@"Line 2 - Size of variable b = %d\n", sizeof(b) );
   NSLog(@"Line 3 - Size of variable c= %d\n", sizeof(c) );

   /* example of & and * operators */
   ptr = &a;	/* 'ptr' now contains the address of 'a'*/
   NSLog(@"value of a is  %d\n", a);
   NSLog(@"*ptr is %d.\n", *ptr);
NSLog(@"ptr address  is %d.\n", ptr);
   /* example of ternary operator */
   a = 10;
   b = (a == 1) ? 20: 30;
   NSLog(@"Value of b is %d\n", b );

   b = (a == 10) ? 20: 30;
   NSLog(@"Value of b is %d\n", b );
}
