import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final Color fillColor;
  final double? width, height;
  final bool enabled;
  final Function(String)? onChangedFunction;
  final int? maxLines;
  final String? hintText;

  const CustomTextField({
    Key? key,
    this.fillColor = CColors.primaryColor,
    this.width = 350,
    this.height = 50,
    this.enabled = true,
    this.hintText = "Search here...",
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
        style: CustomTextStyles.textFieldStyle,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: CustomTextStyles.hintTextStyle,
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              15.pw,
              const Icon(
                Icons.search_rounded,
                size: 25,
              ),
              5.pw,
            ],
          ),
          prefixIconColor: CColors.lightBlueColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.lightBlueColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.lightBlueColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.lightBlueColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
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
