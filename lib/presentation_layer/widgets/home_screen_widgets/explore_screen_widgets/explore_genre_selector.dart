import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
class ExploreGenreSelector extends StatelessWidget {
  const ExploreGenreSelector({Key? key, required this.genreName, required this.onTap,required this.isPressed}) : super(key: key);
  final String genreName;
  final VoidCallback onTap;
  final bool isPressed;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.01),
          margin: EdgeInsets.symmetric(vertical: height*0.002,horizontal: width*0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color:isPressed?MyColors.hardGreen:MyColors.white,
          ),
          child: Text(
            genreName,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                color:isPressed?Colors.white:MyColors.black,
                fontSize: height * 0.015,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
