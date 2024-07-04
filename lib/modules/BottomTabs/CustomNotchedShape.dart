import 'dart:ui';

import 'package:flutter/material.dart';

class CustomNotchedShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double notchRadius = 22.0;
    final double topMargin = 6.0;
    final double bottomMargin = 0.0;

    Path path = Path();
    path.moveTo(0, topMargin);
    path.lineTo(size.width * 0.5 - notchRadius, topMargin);
    path.arcToPoint(
      Offset(size.width * 0.5 + notchRadius, topMargin),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );
    path.lineTo(size.width, topMargin);
    path.lineTo(size.width, size.height - bottomMargin);
    path.arcToPoint(
      Offset(0, size.height - bottomMargin),
      radius: Radius.circular(size.width / 2),
      clockwise: true,
    );
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
