import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:flutter/material.dart';

class AwardBookInfo extends StatelessWidget {
  const AwardBookInfo({
    Key? key,
    required this.width,
    required this.height,
    required this.book,
  }) : super(key: key);

  final double width;
  final double height;
  final Book book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BookDescriptionScreen(book: book)));
      },
      child: Container(
        width: width,
        padding: EdgeInsets.only(
            left: width * 0.02, right: width * 0.02, bottom: height * 0.01),
        child: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: width * 0.65,
              height: height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.bookName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: height * 0.025,
                        color: MyColors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    book.bookDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: height * 0.02,
                        color: MyColors.black,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "${book.bookLikes}",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: height * 0.02,
                            color: MyColors.black,
                            letterSpacing: 1),
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Icon(
                        Icons.category,
                        size: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        book.bookCategories[0],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: height * 0.02,
                            color: MyColors.black,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.3,
                        height: height * 0.035,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BookDescriptionScreen(book: book)));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: MyColors.hardGreen,
                              onPrimary: MyColors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Read now",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: height * 0.019, letterSpacing: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: width * 0.2,
              height: height * 0.15,
              // color: MyColors.softBlue,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(book.bookPhoto))),
            )
          ],
        ),
      ),
    );
  }
}
