import 'package:flutter/cupertino.dart';

import '../enums/screen_enums.dart';

class PlatformSizes {
  PlatformSizes._();

  static const double minLargeScreenWidth = 1008;

  static const double minMediumScreenWidth = 750;

  static const double maxMediumScreenWidth = 1007;

  static const double maxSmallScreenWidth = 749;

  static screenType({
    required BoxConstraints constraint,
  }) {
    if (constraint.maxWidth >= PlatformSizes.minLargeScreenWidth) {
      return TargetPlatformEnum.web;
    } else if (constraint.maxWidth <= PlatformSizes.maxMediumScreenWidth &&
        constraint.maxWidth >= PlatformSizes.minMediumScreenWidth) {
      return TargetPlatformEnum.tab;
    } else {
      return TargetPlatformEnum.phone;
    }
  }
}
