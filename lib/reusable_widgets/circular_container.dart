import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class CircularContainer extends StatelessWidget {
  final double width, height;
  final Color? backgroundColor;
  final Widget? widget;

  const CircularContainer({
    super.key,
    required this.width,
    required this.height,
    this.backgroundColor = CColors.lightBlueColor,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: widget,
    );
  }
}
