import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';


class SmallCustomElevatedButton extends StatelessWidget {
  const SmallCustomElevatedButton({Key? key, required this.height, required this.width, required this.buttonText, required this.buttonIcon, required this.buttonColor, required this.buttonOnPress, required this.buttonTextSize}) : super(key: key);
  final double height,width,buttonTextSize;
  final String buttonText;
  final IconData buttonIcon;
  final Color buttonColor;
  final VoidCallback buttonOnPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: buttonOnPress,
        child:  FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(buttonText,
                  style: TextStyle(
                      fontSize: buttonTextSize,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: width*0.02,
              ),
              Icon(buttonIcon,size:buttonTextSize),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          onPrimary: MyColors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
