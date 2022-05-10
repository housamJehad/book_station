import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class NamedAppBar extends StatelessWidget implements PreferredSizeWidget{
  const NamedAppBar({
    Key? key,
    required this.height, required this.appBarTitle,
  }) : super(key: key);

  final double height;
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back, color: MyColors.black),
      ),
      title: InformationText(
        textAlign: TextAlign.start,
        fontWeight: FontWeight.bold,
        maxLines: 1,
        text: appBarTitle,
        fontColor: MyColors.black,
        fontSize: height * 0.025,
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
