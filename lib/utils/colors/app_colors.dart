import 'package:flutter/material.dart';

class CColors {
  CColors._();

  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color primaryColor = Color(0xFF040429);
  static const Color darkColor = Color(0xFF06043B);
  static const Color menuBarColor = Color(0xFF11112F);
  static const Color darkBlueColor = Color(0xFF3B4DCE);
  static const Color darkBlueSecondColor = Color(0xFF1F34B0);
  static const Color lightBlueColor = Color(0xFF4B6FD6);
  static const Color lightBlueTwoColor = Color(0xFF788AD7);
  static const Color redColor = Color(0xFFDE4355);

  static List<Color> sideMenuTileGradientColor = [
    const Color(0xFF4B6FD6).withOpacity(0.9),
    const Color(0xFF4B6FD6).withOpacity(0.21),
  ];
  static List<Color> backgroundGradientColor = [
    const Color(0xFF040429).withOpacity(1),
    const Color(0xFF090816).withOpacity(1),
    const Color(0xFF040429).withOpacity(1),
  ];

  static List<Color> vitalsBackgroundColorGradientColor = [
    const Color(0xFF4B6FD6).withOpacity(0.048),
    const Color(0xFF040429).withOpacity(0.23),
    const Color(0xFF040429).withOpacity(0.23),
    const Color(0xFFDE4355).withOpacity(0.23),
  ];
}
