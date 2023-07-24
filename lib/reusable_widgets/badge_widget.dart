import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class BadgeWidget extends StatelessWidget {
  final IconData iconData;

  const BadgeWidget({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return  Badge(
      smallSize: 12,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 46,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Icon(
              iconData,
              color: CColors.whiteColor,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
