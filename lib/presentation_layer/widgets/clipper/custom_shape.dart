import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = Path() ..lineTo(0, size.height) // Add line p1p2
      ..lineTo(size.width*0.5, size.height) // Add line p2p3
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}



class TopShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = Path() ..lineTo(size.width/2, size.height) // Add line p1p2
      ..lineTo(size.width/2, 0) // Add line p2p3
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
