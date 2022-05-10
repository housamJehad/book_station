import 'package:flutter/material.dart';

class MainGridView extends StatelessWidget {
  const MainGridView(
      {Key? key,
      required this.crossElementNumber,
      required this.elementSize,
      required this.gridChildren, required this.elementMarginWidth})
      : super(key: key);
  final int crossElementNumber;
  final double elementSize;
  final double elementMarginWidth;
  final List<Widget> gridChildren;
  @override
  Widget build(BuildContext context) {
    return   GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossElementNumber,
        mainAxisExtent: elementSize,
        crossAxisSpacing: elementMarginWidth,
        mainAxisSpacing: elementMarginWidth
        // childAspectRatio: elementSize,
      ),

      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: gridChildren,
    );
  }
}
