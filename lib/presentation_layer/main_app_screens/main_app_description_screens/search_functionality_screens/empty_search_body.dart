import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class EmptySearchBody extends StatelessWidget {
  const EmptySearchBody({
    Key? key,
    required this.width,
    required this.height, required this.headText, required this.tailText, required this.headFontSize, required this.tailFontSize,
  }) : super(key: key);

  final double width;
  final double height;
  final String headText;
  final String tailText;
  final double headFontSize,tailFontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InformationText(
            text: headText,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
            maxLines: 1,
            fontColor: MyColors.black,
            fontSize: headFontSize,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          InformationText(
            text: tailText,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
            maxLines: 1,
            fontColor: MyColors.black.withOpacity(0.6),
            fontSize: tailFontSize,
          )
        ],
      ),
    );
  }
}
