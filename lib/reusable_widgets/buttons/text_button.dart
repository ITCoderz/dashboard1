import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String text;
  final TextStyle? textStyle;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressedFunction,
    this.textStyle = CustomTextStyles.darkBlue414
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedFunction,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
