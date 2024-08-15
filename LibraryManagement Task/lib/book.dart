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
      print('Book borrowed successfully.');
    } else {
      print('Sorry, this book is not available.');
    }
  }

  void returnBook() {
    availability++;
    print('Book returned successfully.');
  }

  String printData() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Availability: $availability';
  }
}
