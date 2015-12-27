#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (void)sampleMethod;
@end

@implementation SampleClass

- (void)sampleMethod
{
   NSLog(@"Hello, World! \n");
}

- (void)dealloc 
{
  NSLog(@"Object deallocated");
}

@end

int main()
{
   /* my first program in Objective-C */
   @autoreleasepool{
       SampleClass *sampleClass = [[SampleClass alloc]init];
       [sampleClass sampleMethod];
	   sampleClass = nil;
   }
   return 0;
}
