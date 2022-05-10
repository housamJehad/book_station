import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/rank_book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  const Ranking({
    Key? key,
    required this.width,
    required this.height,
    required this.rankBook,
  }) : super(key: key);

  final double width;
  final double height;
  final RankBook rankBook;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    BookDescriptionScreen(book: rankBook.book)));
      },
      child: Container(
        width: width * 0.6,
        height: height*0.09,
        margin: EdgeInsets.only(right: width * 0.01, bottom: height * 0.01),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height * 0.07,
              width: width * 0.11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image:
                    DecorationImage(image: AssetImage(rankBook.book.bookPhoto)),
              ),
            ),
            Container(
                alignment: Alignment.topCenter,
                width: width * 0.08,
                child: Text(
                  "${rankBook.rank}",
                  style: TextStyle(
                    color: rankBook.rankColor,
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.022,
                    letterSpacing: 1,
                  ),
                )),
            SizedBox(
              child: SizedBox(
                width: width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(rankBook.book.bookName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: MyColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.023,
                          letterSpacing: 1,
                        )),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(rankBook.book.bookCategories[0],
                        maxLines: 1,
                        style: TextStyle(
                          color: MyColors.black,
                          fontSize: height * 0.02,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
