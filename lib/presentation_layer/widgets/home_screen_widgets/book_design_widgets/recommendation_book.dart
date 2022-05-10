import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:flutter/material.dart';

class RecommendationBook extends StatelessWidget {
  const RecommendationBook({
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
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=>BookDescriptionScreen(book: book))
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        width: width,
        height: height * 0.19,
        child: Column(
          children: [
            Container(
              height: height * 0.11,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(book.bookPhoto), fit: BoxFit.cover)),
            ),
            Text(
              book.bookName,
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: MyColors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  overflow: TextOverflow.ellipsis,
                  fontSize: height * 0.02),
            )
          ],
        ),
      ),
    );
  }
}
