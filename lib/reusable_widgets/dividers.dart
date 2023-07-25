import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: CColors.lightBlueColor.withOpacity(
        0.32,
      ),
    );
  }
}

class CustomHorizontalDivider extends StatelessWidget {
  const CustomHorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: CColors.lightBlueColor.withOpacity(
        0.32,
      ),
    );
  }
}
