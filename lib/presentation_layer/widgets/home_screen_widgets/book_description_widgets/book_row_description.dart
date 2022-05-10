import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/main_app_screens/profile_screen/show_genres_screen.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class BookRowDescription extends StatelessWidget {
  const BookRowDescription({
    Key? key,
    required this.height,
    required this.width,
    required this.numOfFavorite,
    required this.numOfGenres,
    required this.language,
    required this.bookGenre,
  }) : super(key: key);

  final double height;
  final double width;
  final int numOfFavorite, numOfGenres;
  final String language;
  final List<String>bookGenre;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: width,
      margin: EdgeInsets.only(
          bottom: height * 0.03, right: width * 0.05, left: width * 0.05),
      decoration: BoxDecoration(
          color: MyColors.white,
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade800, width: width * 0.001))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InformationText(
                  textAlign: TextAlign.center,
                  text: "$numOfFavorite",
                  fontColor: MyColors.black,
                  fontWeight: FontWeight.bold,
                  maxLines: 1,
                  fontSize: height * 0.022,
                ),
                InformationText(
                  textAlign: TextAlign.center,
                  text: "Favorite",
                  fontColor: MyColors.black,
                  fontWeight: FontWeight.normal,
                  maxLines: 1,
                  fontSize: height * 0.02,
                ),
              ],
            ),
          ),
            Container(
              margin: EdgeInsets.symmetric(vertical: height * 0.03),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          color: MyColors.black, width: width * 0.002))),
            ),

          InkWell(
            onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowGenresScreen(genres: bookGenre)));
            },
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InformationText(
                    textAlign: TextAlign.center,
                    text: "$numOfGenres",
                    fontColor: MyColors.hardGreen,
                    fontWeight: FontWeight.bold,
                    maxLines: 1,
                    fontSize: height * 0.022,
                  ),
                  InformationText(
                    textAlign: TextAlign.center,
                    text: "Genres",
                    fontColor: MyColors.hardGreen,
                    fontWeight: FontWeight.normal,
                    maxLines: 1,
                    fontSize: height * 0.02,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.03),
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
                        color: MyColors.black, width: width * 0.002))),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InformationText(
                  textAlign: TextAlign.center,
                  text: language,
                  fontColor: MyColors.black,
                  fontWeight: FontWeight.bold,
                  maxLines: 1,
                  fontSize: height * 0.022,
                ),
                InformationText(
                  textAlign: TextAlign.center,
                  text: "Languages",
                  fontColor: MyColors.black,
                  fontWeight: FontWeight.normal,
                  maxLines: 1,
                  fontSize: height * 0.02,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
