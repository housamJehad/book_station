import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class BookOptionButton extends StatelessWidget {
  const BookOptionButton({
    Key? key,
    required this.width,
    required this.height, required this.onPress, required this.buttonText, required this.primaryColor, required this.onPrimaryColor,
  }) : super(key: key);

  final double width;
  final double height;
  final VoidCallback onPress;
  final String buttonText;
  final Color primaryColor;
  final Color onPrimaryColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: width * 0.01),
      height: height * 0.05,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            primary: primaryColor),
        child: Center(
          child: InformationText(
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
            maxLines: 1,
            text: buttonText,
            fontColor:onPrimaryColor,
            fontSize: height * 0.02,
          ),
        ),
      ),
    );
  }
}
