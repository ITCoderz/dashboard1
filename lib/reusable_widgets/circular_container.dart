import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double width, height;
  final Color? backgroundColor, borderColor;
  final bool needShadow, needBorder;
  final List<BoxShadow>? boxShadow;
  final Widget? widget;

  const CircularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.needShadow = false,
    this.needBorder = false,
    this.widget,
    this.boxShadow,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: needBorder
            ? Border.all(
                color: borderColor!,
              )
            : null,
        boxShadow: needShadow ? boxShadow : null,
        color: backgroundColor,
      ),
      child: widget,
    );
  }
}
