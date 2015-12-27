#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSDate *date= [NSDate date];
   NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
   [dateFormatter setDateFormat:@"yyyy-MM-dd"];
   NSString *dateString = [dateFormatter stringFromDate:date];
   NSLog(@"Current date is %@",dateString);
   NSDate *newDate = [dateFormatter dateFromString:dateString];
   NSLog(@"NewDate: %@",newDate);
   [pool drain];
   return 0;
}
