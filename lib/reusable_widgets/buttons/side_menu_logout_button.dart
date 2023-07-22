import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';

class LogOutButton extends StatelessWidget {
  final double width, height, radius;
  final Function()? logOutFunction;

  const LogOutButton({
    super.key,
    required this.width,
    required this.height,
    required this.logOutFunction,
    this.radius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: logOutFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: CColors.whiteColor,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      ),
      child: const FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
        child: Text(
          "Log Out",
          // style: CCustomTextStyles.sideMenu515,
        ),
      ),
    );
  }
}
