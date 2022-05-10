import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
class GenreSelector extends StatelessWidget {
  const GenreSelector({Key? key, required this.genreName, required this.borderColor, required this.onTap}) : super(key: key);
  final String genreName;
  final Color borderColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width*0.45,
        padding: EdgeInsets.symmetric(horizontal: width*0.03),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:MyColors.white,
          border: Border.all(color: borderColor,width: width*0.003),
        ),
        child:Text(
          genreName,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: MyColors.black,
              fontSize: height * 0.015,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              letterSpacing: 1),
        ),
      ),
    );
  }
}


