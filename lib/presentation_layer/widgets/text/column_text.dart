
import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';

class ColumnText extends StatelessWidget {
  const ColumnText({
    Key? key,
    required this.height,
    required this.prefNumber,
    required this.postText,
  }) : super(key: key);
  final int prefNumber;
  final String postText;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$prefNumber",
            maxLines: 1,
            style: TextStyle(
                color: MyColors.black,
                fontSize: height * 0.02,
                overflow: TextOverflow.ellipsis,
                letterSpacing: 1),
          ),
          Text(
            postText,
            maxLines: 1,
            style: TextStyle(
                color: MyColors.black,
                fontSize: height * 0.018,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
                letterSpacing: 1),
          )
        ]);
  }
}
