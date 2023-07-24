import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class CustomThemeData {
  CustomThemeData._();

  static ThemeData themeData = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.transparent,
    scrollbarTheme: ScrollbarThemeData(
      trackVisibility: MaterialStateProperty.all(
        true,
      ),
      thumbVisibility: MaterialStateProperty.all(
        true,
      ),
      interactive: true,
      trackColor: MaterialStateProperty.all(
        CColors.lightBlueTwoColor.withOpacity(0.3),
      ),
      thickness: MaterialStateProperty.all(10),
      thumbColor: MaterialStateProperty.all(
        CColors.lightBlueTwoColor,
      ),
      radius: const Radius.circular(100),
    ),
    useMaterial3: true,
  );
}
