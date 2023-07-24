import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/models/activity_model.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';

import '../../utils/colors/app_colors.dart';

class ActivityCheckCardWidget extends StatelessWidget {
  final ActivityModel activityModel;

  const ActivityCheckCardWidget({super.key, required this.activityModel});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 310,
      ),
      child: Container(
        width: 420,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30,
          ),
          border: Border.all(
            color: CColors.darkBlueColor,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              activityModel.activityName,
              style: CustomTextStyles.white720,
            ),
          ],
        ),
      ),
    );
  }
}
