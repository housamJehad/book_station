import 'package:flutter/material.dart';
class InformationText extends StatelessWidget {
  const InformationText(
      {Key? key,
        required this.fontSize,
        required this.maxLines,
        required this.text,
        required this.fontWeight,
        required this.fontColor, required this.textAlign})
      : super(key: key);
  final double fontSize;
  final int maxLines;
  final String text;
  final FontWeight fontWeight;
  final Color fontColor;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(

          fontSize: fontSize,
          letterSpacing: 1,
          fontWeight: fontWeight,
          color: fontColor),
    );
  }
}
