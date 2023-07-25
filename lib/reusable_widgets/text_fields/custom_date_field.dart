import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';

import '../../utils/colors/app_colors.dart';

class CustomDateField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final Function()? onTapFunction;
  final TextEditingController textEditingController;
  final Color fillColor;
  final double? width, height;
  final bool? enabled, showCursor;
  final int? maxLines;
  final String? hintText;
  final TextStyle? textStyle, hintStyle;

  const CustomDateField({
    Key? key,
    this.fillColor = CColors.darkBlueColor,
    this.width = 350,
    this.height = 50,
    this.enabled = true,
    this.hintText = "Select Date",
    this.onTapFunction,
    this.validatorFunction,
    this.maxLines,
    this.hintStyle = CustomTextStyles.white416,
    this.showCursor = false,
    this.textStyle = CustomTextStyles.white416,
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
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              15.pw,
              const Icon(
                Icons.calendar_today_outlined,
                size: 25,
              ),
              5.pw,
            ],
          ),
          prefixIconColor: CColors.whiteColor,
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              15.pw,
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 25,
              ),
              15.pw,
            ],
          ),
          suffixIconColor: CColors.whiteColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
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
