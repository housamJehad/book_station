import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';

class LimitedCustomTextFormField extends StatelessWidget {
  const LimitedCustomTextFormField({
    Key? key,
    required this.height,
    required this.textFieldHintText,
    required this.textInputAction,
    required this.readOnly,
    required this.onChanged,
    required this.autoFocus, required this.textEditingController, required this.limit, required this.textInputType, required this.focusNode,

  }) : super(key: key);
 final int limit;
  final double height;
  final String textFieldHintText;
  final TextInputAction textInputAction;
  final bool readOnly, autoFocus;
  final TextEditingController textEditingController;
  final String Function(String?) onChanged;
  final TextInputType textInputType;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      maxLength: limit,
      maxLines: 1,
      textInputAction: textInputAction,
      readOnly: readOnly,
      autofocus: autoFocus,
      focusNode:focusNode,
      cursorColor: MyColors.hardGreen,
   keyboardType: textInputType,
   onChanged: onChanged,
      style: TextStyle(
          fontSize: height * 0.023,
          letterSpacing: 2,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
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
      ),
    );
  }
}
