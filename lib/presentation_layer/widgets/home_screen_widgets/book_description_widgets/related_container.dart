
import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class RelatedContainer extends StatelessWidget {
  const RelatedContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.listGeneration, required this.relatedText,
  }) : super(key: key);

  final double height;
  final double width;
  final ListGeneration listGeneration;
  final String relatedText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: height * 0.03,
          right: width * 0.05,
          left: width * 0.05),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InformationText(
              textAlign: TextAlign.start,
              fontSize: height * 0.025,
              maxLines: 1,
              fontWeight: FontWeight.bold,
              fontColor: MyColors.black,
              text: relatedText,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: height * 0.03,
            ),
            child:  SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listGeneration.getRecommendationBook(
                      width * 0.18,
                      height,
                      BooksCategories().readingPreference
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}