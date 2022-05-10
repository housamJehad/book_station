import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';


class NormalAppBar extends StatelessWidget implements PreferredSizeWidget{
  final bool haveLeading;
  const NormalAppBar({
    Key? key, required this.haveLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.white,
      centerTitle: true,
      title: const Text("Book Station",
          style: TextStyle(
              color: MyColors.hardGreen,
              letterSpacing: 1,
              fontWeight: FontWeight.bold)),
      elevation: 0,
      leading:haveLeading? IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ):const SizedBox(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
