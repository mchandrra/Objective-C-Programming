#import <Foundation/Foundation.h>
 
const int MAX = 3;
 
int main ()
{
   int  var[] = {10, 100, 200};
   int i;
 
   for (i = 0; i < MAX; i++)
   {
      NSLog(@"Value of var[%d] = %d\n", i, var[i] );
   }
   return 0;
}
