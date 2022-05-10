import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class RowDescription extends StatelessWidget {
  const RowDescription({
    Key? key,
    required this.height,
    required this.width, required this.mainText1, required this.mainDescription1, required this.mainText2, required this.mainDescription2, required this.mainText3, required this.mainDescription3, required this.containerColor, required this.textColor, required this.containerWidth,
  }) : super(key: key);

  final double height;
  final double width,containerWidth;
  final String mainText1,mainDescription1;
  final String mainText2,mainDescription2;
  final String mainText3,mainDescription3;
  final Color containerColor,textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.1,
      width: containerWidth,
      padding: EdgeInsets.symmetric(horizontal: width*0.03),
      margin: EdgeInsets.only(bottom:  height*0.03),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InformationText(textAlign: TextAlign.center,text: mainDescription1,fontColor: textColor,fontWeight: FontWeight.bold,maxLines: 1,fontSize: height*0.025,),
                InformationText(textAlign: TextAlign.center,text: mainText1,fontColor:textColor,fontWeight: FontWeight.normal,maxLines: 1,fontSize: height*0.02,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height*0.02),
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: MyColors.white,width: width*0.002))
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InformationText(textAlign: TextAlign.center,text: mainDescription2,fontColor: textColor,fontWeight: FontWeight.bold,maxLines: 1,fontSize: height*0.025,),
                InformationText(textAlign: TextAlign.center,text: mainText2,fontColor: textColor,fontWeight: FontWeight.normal,maxLines: 1,fontSize: height*0.02,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height*0.02),
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: MyColors.white,width: width*0.002))
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InformationText(textAlign: TextAlign.center,text: mainDescription3,fontColor:textColor,fontWeight: FontWeight.bold,maxLines: 1,fontSize: height*0.025,),
                InformationText(textAlign: TextAlign.center,text: mainText3,fontColor: textColor,fontWeight: FontWeight.normal,maxLines: 1,fontSize: height*0.02,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
