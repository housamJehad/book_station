import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/buttons/small_custom_elevated_button.dart';
import 'package:flutter/material.dart';
class NextBottomNavBar extends StatelessWidget {
  const NextBottomNavBar({
    Key? key,
    required this.width,
    required this.height,

    required this.validators, required this.predicate,required this.nextOnPress,
  }) : super(key: key);

  final double width;
  final double height;
  final List<bool>validators;
  final bool predicate;
  final VoidCallback nextOnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: MyColors.gray, width: width * 0.002))),
      height: height * 0.1,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SmallCustomElevatedButton(
            buttonText: "Next",
            buttonTextSize: height * 0.025,
            buttonColor:checkValidateNext()&&predicate? MyColors.hardGreen:Colors.black38,
            buttonIcon: Icons.navigate_next,
            buttonOnPress:checkValidateNext()&&predicate? nextOnPress:(){},
            width: width * 0.25,
            height: height * 0.055,
          ),
        ],
      ),
    );
  }
  bool checkValidateNext(){
    for(int i=0;i<validators.length;i++){
      if(!validators[i]){
        return false;
      }
    }

    return true;
  }
}
