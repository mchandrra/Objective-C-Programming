#import <Foundation/Foundation.h>

int main()
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
   @"string1",@"key1", @"string2",@"key2",@"string3",@"key3",nil];
   NSString *string1 = [dictionary objectForKey:@"key1"];
   NSLog(@"The object for key, key1 in dictionary is %@",string1);
   NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc]init];
   [mutableDictionary setValue:@"string" forKey:@"key1"];
   string1 = [mutableDictionary objectForKey:@"key1"];
   NSLog(@"The object for key, key1 in mutableDictionary is %@",string1); 
   [pool drain];
   return 0;
}
