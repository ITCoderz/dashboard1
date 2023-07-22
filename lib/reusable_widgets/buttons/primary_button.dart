import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final double width, height, radius;
  final Function()? onPressFunction;
  final String text;
  final Color backgroundColor;
  final TextStyle? textStyle;

  const PrimaryButton({
    super.key,
    required this.width,
    required this.height,
    required this.onPressFunction,
    required this.text,
    this.backgroundColor = CColors.primaryColor,
    this.textStyle = CCustomTextStyles.white613,
    this.radius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(width, height),
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      ),
      child: FittedBox(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
