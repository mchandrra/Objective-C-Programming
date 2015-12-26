#import <Foundation/Foundation.h>

#if !defined (MESSAGE)
   #define MESSAGE "Make Your wish!"
#endif

int main(void)
{
   NSLog(@"Here is the message: %s\n", MESSAGE);  
   return 0;
}
