#import <Foundation/Foundation.h>

int main( int argc, char *argv[] )
{
NSLog(@"Program name %s\n", argv[0]);
   if( argc == 2 )
   {
      NSLog(@"The argument supplied is %s\n", argv[1]);
   }
   else if( argc == 3)
   {
      NSLog(@"The argument supplied is %s and %s\n", argv[1], argv[2]);
   }
   else if( argc > 3 )
   {
      NSLog(@"Too many arguments supplied.\n");
   }
   else
   {
      NSLog(@"Please provide atleast one argument. One argument expected.\n");
   }
}

