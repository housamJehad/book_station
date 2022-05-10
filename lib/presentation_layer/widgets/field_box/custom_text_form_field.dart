import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.height,
    required this.textFieldHintText,
    required this.textInputAction,
    required this.readOnly,
    required this.autoFocus,
    required this.onTap,
    required this.textEditingController,
    required this.havePrefix,
    this.prefWidget=const SizedBox(),
    required this.onComplete, required this.textInputType
  }) : super(key: key);

  final double height;
  final String textFieldHintText;
  final TextInputAction textInputAction;
  final bool readOnly, autoFocus;
  final VoidCallback onTap;
  final String Function(String?) onComplete;
  final TextEditingController textEditingController;
  final bool havePrefix;
  final Widget prefWidget;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      maxLines: 1,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      readOnly: readOnly,
      autofocus: autoFocus,
      onTap: onTap,
      onChanged: onComplete,
      cursorColor: MyColors.hardGreen,
      style: TextStyle(
          fontSize: height * 0.023,
          letterSpacing: 2,
          fontWeight: FontWeight.bold),
      decoration:havePrefix?truePref():falsePref(),
    );
  }

  InputDecoration falsePref(){
    return InputDecoration(
          hintText: textFieldHintText,
          focusColor: MyColors.hardGreen,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: MyColors.hardGreen,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
    );
  }

  InputDecoration truePref(){
    return InputDecoration(
      hintText: textFieldHintText,
      focusColor: MyColors.hardGreen,
      prefix:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "+962",
              style: TextStyle(
                fontSize: height*0.02,
                  color: MyColors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold

              )),

        ],
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: MyColors.hardGreen,
        ),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
    );
  }
}

