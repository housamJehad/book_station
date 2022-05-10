import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class SearchFilter extends StatelessWidget {
  const SearchFilter({
    Key? key,
    required this.height, required this.filterText, required this.primaryColor, required this.onPrimaryColor, required this.width, required this.borderColor, required this.elevation, required this.onPressFilter,
  }) : super(key: key);

  final double height,width;
  final String filterText;
  final Color primaryColor;
  final Color onPrimaryColor,borderColor;
  final double elevation;
  final VoidCallback onPressFilter;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: width*0.02),
      alignment: Alignment.center,
      height: height*0.045,
      child: ElevatedButton(
        onPressed: onPressFilter,
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            onPrimary: onPrimaryColor,
            elevation: elevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                  color:borderColor,
                  width: width*0.001
              ),
            )
        ),
        child: InformationText(
          text: filterText,
          fontWeight: FontWeight.normal,
          textAlign: TextAlign.start,
          maxLines: 1,
          fontColor: onPrimaryColor,
          fontSize: height * 0.02,
        ),
      ),
    );
  }
}
