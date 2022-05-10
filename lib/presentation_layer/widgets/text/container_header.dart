import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
class ContainerHeader extends StatelessWidget {
  const ContainerHeader({
    Key? key,
    required this.width,
    required this.height, required this.pref, required this.suffix, required this.suffixIcon, required this.suffixVisibility, required this.prefOnPress,
  }) : super(key: key);

  final double width;
  final double height;
  final String pref,suffix;
  final IconData suffixIcon;
  final bool suffixVisibility;
  final VoidCallback prefOnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.black,
            width: width*0.001
          )
        )
      ),
      margin: EdgeInsets.only(bottom:  height*0.02,right:  width*0.02,left:   width*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height*0.035,
            child: Text(
              pref,
              style: TextStyle(
                  color: MyColors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  overflow: TextOverflow.ellipsis,
                  fontSize: height * 0.025),
            ),
          ),
          Visibility(
            visible: suffixVisibility,
            child: TextButton(
              onPressed:prefOnPress,
              child: Row(
                children: [
                  Text(
                    suffix,
                    style: TextStyle(
                        color: MyColors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        overflow: TextOverflow.ellipsis,
                        fontSize: height * 0.022),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Icon(
                    suffixIcon,
                    color: MyColors.hardGreen,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
