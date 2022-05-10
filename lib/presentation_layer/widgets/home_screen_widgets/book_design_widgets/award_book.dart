import 'package:flutter/material.dart';
class AwardBook extends StatelessWidget {
  const AwardBook({
    Key? key,
    required this.width,
    required this.height,
    required this.borderColor,
    required this.bookPhoto,
    required this.onTap,
    required this.index
  }) : super(key: key);

  final double width;
  final double height;
  final Color borderColor;
  final String bookPhoto;
  final VoidCallback onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width*0.1,
        height: height*0.065,
        margin: EdgeInsets.only(right: width*0.01),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: borderColor,width: height*0.003),
        ),
        child: Container(
          width: width*0.08,
          height: height*0.055,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                  image: AssetImage(bookPhoto)
              )
          ),
        ),
      ),
    );
  }
}

