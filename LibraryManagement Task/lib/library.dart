import 'dart:developer';

import 'package:librarymanagement/book.dart';

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  List<Book> searchByTitle(String title) {
    List<Book> foundBooks = [];
    for (int i = 0; i < books.length; i++) {
      if (books[i].title.toLowerCase().contains(title.toLowerCase())) {
        foundBooks.add(books[i]);
        log('Founded Books by title id ${i + 1} => ${books[i].printData()}');
      }
    }
    return foundBooks;
  }

  List<Book> searchByAuthor(String author) {
    List<Book> foundBooksbyAuthor = [];
    for (int i = 0; i < books.length; i++) {
      if (books[i].author.toLowerCase().contains(author.toLowerCase())) {
        foundBooksbyAuthor.add(books[i]);
        log('Founded Books by author id ${i + 1} => ${books[i].printData()}');
      }
    }
    return foundBooksbyAuthor;
  }

  void displayBooks() {
    for (int i = 0; i < books.length; i++) {
      print('Book ${i + 1} => ${books[i].printData()}');
    }
  }
}
