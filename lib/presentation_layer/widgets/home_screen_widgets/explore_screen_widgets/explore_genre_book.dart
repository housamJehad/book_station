import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
class ExploreGenreBook extends StatelessWidget {
  const ExploreGenreBook({
    Key? key,
    required this.width,
    required this.height,
    required this.photo,
    required this.name,
    required this.fontSize
  }) : super(key: key);

  final double width;
  final double height,fontSize;
  final String photo, name;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        width: width,
        height: height ,
        child: Column(
          children: [
            Container(
              height: height*0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(photo), fit: BoxFit.cover)),
            ),
            Text(
              name,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: MyColors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: fontSize),
            )
          ],
        ),
      ),
    );
  }
}