import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:flutter/material.dart';
class DailyRecommendation extends StatelessWidget {
  const DailyRecommendation({
    Key? key,
    required this.width,
    required this.height,
    required this.book
  }) : super(key: key);

  final double width;
  final double height;
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.12,
      color: MyColors.hardGreen,
      padding: EdgeInsets.only(left: width * 0.035, top: height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width * 0.15,
            height: height * 0.1,
            margin: EdgeInsets.only(right: width * 0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(book.bookPhoto),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.008),
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DAILY RECOMMENDATION",
                      style: TextStyle(
                          fontSize: height * 0.02,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(book.bookName,
                      style: TextStyle(
                        fontSize: height * 0.022,
                        color: MyColors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text("${book.bookCategories[0]} with ${book.bookAuthor.authorName}",
                      style: TextStyle(
                        fontSize: height * 0.02,
                        color: MyColors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            width: width * 0.06,
          ),
          SizedBox(
            width: width * 0.2,
            height: height * 0.04,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BookDescriptionScreen(book: book)));
              },
              style: ElevatedButton.styleFrom(
                  primary: MyColors.white,
                  onPrimary: MyColors.hardGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.zero),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SHOW",
                    style: TextStyle(
                      fontSize: height * 0.018,
                      color: MyColors.hardGreen,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: MyColors.hardGreen,
                    size: height * 0.02,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
