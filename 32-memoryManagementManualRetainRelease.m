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
  [super dealloc];
}

@end

int main()
{
   /* my first program in Objective-C */
   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass sampleMethod];
   NSLog(@"Retain Count after initial allocation: %d", 
   [sampleClass retainCount]);
   [sampleClass retain];
   NSLog(@"Retain Count after retain: %d", [sampleClass retainCount]);
   [sampleClass release];
   NSLog(@"Retain Count after release: %d", [sampleClass retainCount]);
   [sampleClass release];
   NSLog(@"SampleClass dealloc will be called before this");
   // Should set the object to nil
   sampleClass = nil;
   return 0;
}
