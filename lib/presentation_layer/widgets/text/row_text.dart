import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RowText extends StatelessWidget {
  const RowText({
    Key? key,
    required this.height,
    required this.width, required this.text, required this.onTap, required this.isEditable,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final VoidCallback onTap;
  final bool isEditable;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          maxLines: 1,
          style: TextStyle(
              color: MyColors.black,
              fontSize: height * 0.018,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              letterSpacing: 1),
        ),
        SizedBox(width: width*0.01,),
        Visibility(
          visible: isEditable,
          child: InkWell(
            onTap: onTap,
            child: const Icon(
              FontAwesomeIcons.penToSquare,
              color: MyColors.hardGreen,
            ),
          ),
        ),

      ],
    );
  }
}
