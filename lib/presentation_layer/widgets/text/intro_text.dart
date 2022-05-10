import 'package:flutter/material.dart';



class IntroText extends StatelessWidget {
  const IntroText({Key? key, required this.height,required this.text, required this.alignment, required this.textColor}) : super(key: key);
  final double height;
  final String text;
  final Color textColor;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return    Align(
      alignment: alignment,
      child: Text(
        text,
        textAlign:TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          letterSpacing: 2,
          color: textColor,
          fontSize: height,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
