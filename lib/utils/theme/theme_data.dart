import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class CustomThemeData {
  CustomThemeData._();

  static ThemeData themeData = ThemeData(
    fontFamily: 'Inter',
    scaffoldBackgroundColor: CColors.whiteColor,
    useMaterial3: true,
  );
}
