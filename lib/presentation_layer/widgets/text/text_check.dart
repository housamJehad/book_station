import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextCheck extends StatefulWidget {
  final double height;
  final double width;
  final bool status;
  final String text;
  final Color checkColor;
  const TextCheck(
      {Key? key,
      required this.height,
      required this.width,
      required this.status,
      required this.text,
      required this.checkColor})
      : super(key: key);

  @override
  State<TextCheck> createState() => _TextCheckState();
}

class _TextCheckState extends State<TextCheck> {
  Color valid = MyColors.hardGreen;

  Color unValid = Colors.red;

  Color notChecked = Colors.black54;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
                widget.checkColor == Colors.red
                    ? FontAwesomeIcons.circleXmark
                    : FontAwesomeIcons.circleCheck,
                color: widget.checkColor,
                size: widget.height * 0.025),
          ),
          Expanded(
            flex: 11,
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: widget.height * 0.02,
                  color: MyColors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
