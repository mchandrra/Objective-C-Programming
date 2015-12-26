#import <Foundation/Foundation.h>

struct Books
{
   NSString *title;
   NSString *author;
   NSString *subject;
   int   book_id;
};

@interface SampleClass:NSObject

/* function declaration */
- (void) printBook:( struct Books) book ;

@end

@implementation SampleClass 

- (void) printBook:( struct Books) book
{
   NSLog(@"Book title : %@\n", book.title);
   NSLog(@"Book author : %@\n", book.author);
   NSLog(@"Book subject : %@\n", book.subject);
   NSLog(@"Book book_id : %d\n", book.book_id);
}
@end

int main( )
{
   struct Books Book1;        /* Declare Book1 of type Book */
   struct Books Book2;        /* Declare Book2 of type Book */
 
   /* book 1 specification */
   Book1.title = @"Objective-C Programming";
   Book1.author = @"Tommy"; 
   Book1.subject = @"Learn Objective-C Programming";
   Book1.book_id = 10000001;

   /* book 2 specification */
   Book2.title = @"Swift";
   Book2.author = @"Adam";
   Book2.subject = @"Learn Swift Programming";
   Book2.book_id = 10000000;
 
   SampleClass *sampleClass = [[SampleClass alloc]init];
   /* print Book1 info */
   [sampleClass printBook: Book1];

   /* Print Book2 info */
   [sampleClass printBook: Book2];

   return 0;
}
