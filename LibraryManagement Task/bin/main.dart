import 'package:librarymanagement/book.dart';
import 'package:librarymanagement/library.dart';

void main(List<String> arguments) async {
  var library = Library();
  Book harry = Book(
    title: 'Harry Potter',
    author: 'J.K. Rowling',
    isbn: '1234',
    availability: 10,
  );

  library.addBook(harry);
  harry.borrow();
  harry.printData();
  // harry.returnBook();  // return book
  // harry.printData();

  print('=================================');

  library.addBook(Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      isbn: '585',
      availability: 5));
  library.addBook(Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      isbn: '78478',
      availability: 8)
    ..borrow()); // avilability = 7 , !8
  library.addBook(Book(
      title: 'Bridge to Terabithia',
      author: 'George Orwell',
      isbn: '414754',
      availability: 2));

  print('All books in the library:');
  library.displayBooks();

  print('=================================');

  print('Search By title:');
  print(library.searchByTitle('to'));

  print('=================================');

  print('Search By author:');
  print(library.searchByAuthor('Orwell'));
}
