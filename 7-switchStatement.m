#import <Foundation/Foundation.h>
 
int main ()
{
   /* local variable definition */
   char grade = 'A';



   switch(grade)
   {
   case 'A' :
      NSLog(@"Excellent!\n" );
      break;
   case 'B' :
   case 'C' :
      NSLog(@"Well done\n" );
      break;
   case 'D' :
      NSLog(@"You passed\n" );
      break;
   case 'F' :
      NSLog(@"Better try again\n" );
      break;
   default :
      NSLog(@"Invalid grade\n" );
   }
   NSLog(@"Your grade is  %c\n", grade );
 
   return 0;
}
