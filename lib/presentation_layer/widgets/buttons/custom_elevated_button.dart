import 'package:flutter/material.dart';



class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback buttonOnPress;
  final Color buttonColor;
  const CustomElevatedButton({Key? key, required this.buttonText, required this.buttonIcon, required this.buttonOnPress, required this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return FittedBox(
      child: SizedBox(
        width: width * 0.85,
        height: height * 0.07,
        child: ElevatedButton(
          onPressed: buttonOnPress,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(buttonIcon,size: height*0.03),
              SizedBox(
                width: width*0.02,
              ),
              Text(buttonText,
                  style: TextStyle(
                      fontSize: height*0.025,
                      letterSpacing: 1,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
      ),
    );
  }
}
