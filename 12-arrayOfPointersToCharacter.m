#import <Foundation/Foundation.h>
 
const int MAX = 4;
 
int main ()
{
   char *names[] = {
                   "Tommy",
                   "Jooly",
                   "Adam",
                   "Eve",
                   };
   int i = 0;

   for ( i = 0; i < MAX; i++)
   {
      NSLog(@"Value of names[%d] = %s\n", i, names[i] );
   }
   return 0;
}
