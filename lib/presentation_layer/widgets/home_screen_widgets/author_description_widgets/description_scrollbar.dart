import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class DescriptionScrollbar extends StatelessWidget {
  const DescriptionScrollbar({
    Key? key,
    required this.width,
    required this.height,
    required this.description,
  }) : super(key: key);

  final double width;
  final double height;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width*0.03,right: width*0.01),
      width: width,
      height: height*0.2,
      child: Scrollbar(
          thumbVisibility: true,
          scrollbarOrientation: ScrollbarOrientation.left,
          thickness: width*0.01,
          child:Padding(
            padding: EdgeInsets.only(left: width*0.03),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: InformationText(
                    textAlign: TextAlign.start,
                    fontSize: height*0.025,
                    maxLines: 1,
                    fontWeight: FontWeight.bold,
                    fontColor: MyColors.black,
                    text: "Description",
                  ),
                ),
                SizedBox(height: height*0.015,),
                Align(
                    child: Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 15,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: height*0.0025,
                          fontSize: height*0.02,
                          letterSpacing: 1,
                          fontWeight:FontWeight.bold,
                          color: MyColors.black.withOpacity(0.7)),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}