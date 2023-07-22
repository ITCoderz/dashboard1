import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final Color fillColor;
  final double width, height;
  final bool enabled;
  final Function(String)? onChangedFunction;
  final int? maxLines;
  final String? hintText;
  final TextStyle hintStyle;

  const CustomTextField({
    Key? key,
    this.fillColor = CColors.primaryColor,
    this.width = 250,
    this.height = 35,
    this.enabled = true,
    this.hintStyle = CCustomTextStyles.hintStyle615,
    this.hintText,
    this.onChangedFunction,
    this.validatorFunction,
    this.maxLines,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        maxLines: maxLines,
        enabled: enabled,
        controller: textEditingController,
        textAlignVertical: TextAlignVertical.center,
        style: CCustomTextStyles.black615,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: hintStyle,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
        onChanged: onChangedFunction,
        validator: validatorFunction,
      ),
    );
  }
}
