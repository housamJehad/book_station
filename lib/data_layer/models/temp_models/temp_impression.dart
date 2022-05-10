class TempImpression {
  TempImpression(
      {required this.bookPhoto,
        required this.bookName,
        required this.bookCats,
        required this.bookAuthor,
        required this.readerComment,
        required this.readerPhoto,
        required this.readerName,
      });

  String bookPhoto;
  String bookName;
  String bookAuthor;
  String readerName;
  String readerPhoto;
  String readerComment;
  List<String> bookCats;
}
