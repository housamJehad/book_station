import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:flutter/material.dart';
class AlsoBookLike extends StatelessWidget {
  const AlsoBookLike({
    Key? key,
    required this.width,
    required this.height, required this.book,
   }) : super(key: key);

  final double width;
  final double height;
  final Book book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>BookDescriptionScreen(book: book)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: height*0.02),
        width: width,
        child: Row(
          children: [
            Container(
              width: width * 0.17,
              height: height * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: AssetImage(book.bookPhoto)),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            SizedBox(
              width: width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    crateTagList(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: MyColors.hardGreen, fontSize: height * 0.02),
                  ),
                  SizedBox(
                    height: height * 0.007,
                  ),
                  Text(
                    book.bookName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: height * 0.025,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "By:${book.bookAuthor.authorName}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: MyColors.black,
                      fontSize: height * 0.021,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.007,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.favorite, size: height * 0.022),
                            Text(
                              "${book.bookLikes}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: MyColors.black,
                                fontSize: height * 0.020,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.language, size: height * 0.022),
                            Text(
                              "English",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: MyColors.black,
                                fontSize: height * 0.020,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String crateTagList() {
    String result = "";
    int bookCatLength = book.bookCategories.length;
    for (int i = 0; i < bookCatLength; i++) {
      result += "#${book.bookCategories[i]}";
    }
    return result;
  }
}
