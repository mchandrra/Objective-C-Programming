#import <Foundation/Foundation.h>

typedef struct Books
{
   NSString *title;
   NSString *author;
   NSString *subject;
   int book_id;

} Book;
 
int main( )
{

   Book book;
   book.title = @"Objective-C Programming";
   book.author = @"Chandrra";
   book.subject = @"Learn Objective-CProgramming";
   book.book_id = 1;
   NSLog( @"Book title : %@\n", book.title);
   NSLog( @"Book author : %@\n", book.author);
   NSLog( @"Book subject : %@\n", book.subject);
   NSLog( @"Book Id : %d\n", book.book_id);

   return 0;
}
