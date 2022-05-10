import 'package:book_station/data_layer/models/author.dart';

class Book {
  String bookName;
  String bookDescription;
  Author bookAuthor;
  int bookLikes;
  List<String> bookCategories;
  String bookPhoto;
  String pdfUrl;
  Book(
      {required this.bookName,
      required this.bookDescription,
      required this.bookAuthor,
      required this.bookLikes,
      required this.bookCategories,
      required this.bookPhoto,
        this.pdfUrl="",
      });
}
