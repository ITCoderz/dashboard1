import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      color: CColors.blackColor,
    );
  }
}

class CustomHorizontalDivider extends StatelessWidget {
  const CustomHorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: CColors.blackColor,
    );
  }
}
