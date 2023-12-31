import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final Function()? onTapFunction;
  final TextEditingController textEditingController;
  final Color fillColor;
  final double? width, height;
  final bool? enabled, showCursor;
  final int? maxLines;
  final String? hintText;
  final TextStyle? textStyle, hintStyle;

  const CustomTextField({
    Key? key,
    this.fillColor = CColors.containerDarkColor,
    this.width = 350,
    this.height = 50,
    this.enabled = true,
    this.hintText,
    this.onTapFunction,
    this.validatorFunction,
    this.maxLines,
    this.hintStyle,
    this.showCursor = true,
    required this.textStyle,
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
        style: textStyle,
        keyboardType: TextInputType.text,
        showCursor: showCursor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
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
        onTap: onTapFunction,
        validator: validatorFunction,
      ),
    );
  }
}
