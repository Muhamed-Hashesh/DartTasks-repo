import 'dart:developer';

class Book {
  String title;
  String author;
  String isbn;
  int availability;

  Book({
    required this.title,
    required this.author,
    required this.isbn,
    required this.availability,
  });

  void borrow() {
    if (availability > 0) {
      availability--;
      log('Book borrowed successfully.');
    } else {
      log('Sorry, this book is not available.');
    }
  }

  void returnBook() {
    availability++;
    log('Book returned successfully.');
  }

  String printData() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Availability: $availability';
  }
}
