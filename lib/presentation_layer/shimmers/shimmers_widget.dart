import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RectangleShimmer extends StatelessWidget {
  const RectangleShimmer.rectangle(
      {this.width = double.infinity, required this.height, Key? key})
      : super(key: key);

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        color: Colors.grey,
      ),
    );
  }
}

class BookSelectorShimmer extends StatelessWidget {
   const BookSelectorShimmer.rectangle(
      {required this.width, required this.height, required this.radius});

  final double width, height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.symmetric(
            vertical: height * 0.1, horizontal: width * 0.01),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
