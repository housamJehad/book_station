import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
class SliderPage extends StatelessWidget {
  const SliderPage(
      {Key? key, required this.svgPhotoPath, required this.introductionText})
      : super(key: key);

  final String svgPhotoPath, introductionText;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.85,
      margin: EdgeInsets.only(top: height*0.03,right: 20,left: 20),
      child: Column(
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    height: height * 0.45, child: Image.asset(svgPhotoPath)),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  introductionText,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    letterSpacing: 2,
                    color: MyColors.black,
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
