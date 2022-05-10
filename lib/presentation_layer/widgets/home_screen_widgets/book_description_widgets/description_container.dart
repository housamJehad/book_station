
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({
    Key? key,
    required this.height,
    required this.width, required this.description,

  }) : super(key: key);

  final double height;
  final double width;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: height * 0.01,
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
              text: "Description",
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: width * 0.01),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: width * 0.001,
                        color: Colors.grey.shade800))),
            child: Padding(
              padding: EdgeInsets.only(bottom: height * 0.01),
              child: Align(
                  child: Text(
                    description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        height: height * 0.0025,
                        fontSize: height * 0.02,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: MyColors.black.withOpacity(0.7)),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
