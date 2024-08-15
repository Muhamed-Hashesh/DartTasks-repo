import 'package:librarymanagement/book.dart';
import 'package:librarymanagement/library.dart';

void main(List<String> arguments) async {
  var library = Library();

  library.addBook(Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      isbn: '585',
      availability: 5));
  library.addBook(Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      isbn: '78478',
      availability: 3));
  library.addBook(Book(
      title: 'Bridge to Terabithia',
      author: 'George Orwell',
      isbn: '414754',
      availability: 2));

  print('All books in the library:');
  library.displayBooks();



  print(library.searchByTitle('to'));



  print(library.searchByAuthor('Orwell'));

}
