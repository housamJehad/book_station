import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
class ProfileEditTextFormField extends StatelessWidget {
  const ProfileEditTextFormField({
    Key? key,
    required this.height,
    required this.limit,
    required this.textFieldLabelText,
    required this.textInputAction,
    required this.readOnly,
    required this.onChanged,
    required this.textEditingController,
    required this.textInputType,
  }) : super(key: key);
  final int limit;
  final double height;
  final String textFieldLabelText;
  final TextInputAction textInputAction;
  final bool readOnly;
  final TextEditingController textEditingController;
  final String Function(String?) onChanged;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: 1,
        maxLength: limit,
        readOnly: readOnly,
        controller: textEditingController,
        cursorColor: MyColors.hardGreen,
        style: TextStyle(
            fontSize: height * 0.022,
            letterSpacing: 2,
            fontWeight: FontWeight.normal),
        textInputAction: textInputAction,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: textFieldLabelText,
          labelStyle: TextStyle(
              color: MyColors.black,
              fontSize: height * 0.02,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
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
        ),
        onChanged: onChanged);
  }
}
