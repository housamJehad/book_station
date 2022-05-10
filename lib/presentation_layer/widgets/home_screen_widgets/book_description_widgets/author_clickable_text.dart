import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/author.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/author_description_screen.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class AuthorClickableText extends StatelessWidget {
  const AuthorClickableText({
    Key? key,
    required this.width,
    required this.height, required this.author,
  }) : super(key: key);

  final double width;
  final double height;
  final Author author;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: height*0.01),
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AuthorDescriptionScreen(
                            author: author)));
          },
          child: InformationText(
            fontSize: height * 0.02,
            fontColor: MyColors.hardGreen,
            text: author.authorName,
            maxLines: 2,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
