import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';

class BackgroundContainerWidget extends StatelessWidget {
  final double? height, width;
  final Widget? widget;
  final bool needBottomPadding;
  final bool needBorder;

  const BackgroundContainerWidget(
      {super.key,
      this.width,
      this.height,
      this.widget,
      this.needBorder = true,
      this.needBottomPadding = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(
        top: 15,
        bottom: needBottomPadding ? 15 : 0,
        right: 15,
        left: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: needBorder
            ? Border.all(
                color: CColors.lightBlueColor,
              )
            : null,
      ),
      child: widget,
    );
  }
}
