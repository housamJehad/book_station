import 'package:book_station/data_layer/models/book.dart';

class Author {
  String authorName;
  String authorDescription;
  List<Book> authorBooks;
  String authorPhoto;

  Author(
      {required this.authorName,
      required this.authorDescription,
      required this.authorBooks,required this.authorPhoto});
}
