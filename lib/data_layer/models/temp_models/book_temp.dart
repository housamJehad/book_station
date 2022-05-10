class TempBook {
  TempBook(
      {required this.bookPhoto,
      required this.bookName,
      required this.bookCats,
      required this.bookLanguage,
      required this.bookLikes,
      required this.bookAuthor});

  String bookPhoto;
  String bookName;
  String bookAuthor;
  String bookLanguage;
  int bookLikes;
  List<String> bookCats;
}
