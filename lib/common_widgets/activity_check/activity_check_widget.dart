import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/models/activity_model.dart';
import 'package:gap_cure_dashboard/reusable_widgets/dividers.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../utils/colors/app_colors.dart';

class ActivityCheckCardWidget extends StatelessWidget {
  final ActivityModel activityModel;

  const ActivityCheckCardWidget({super.key, required this.activityModel});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 310,
        maxWidth: 380,
      ),
      child: Container(
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: activityModel.tasksList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: CColors.lightBlueColor.withOpacity(
                          0.32,
                        ),
                      ),
                      bottom: index == activityModel.tasksList.length - 1
                          ? BorderSide.none
                          : BorderSide(
                              color: CColors.lightBlueColor.withOpacity(
                                0.32,
                              ),
                            ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        activityModel.tasksList[index].taskString,
                        style: CustomTextStyles.whiteAccent416,
                      ),
                      const Spacer(),
                      RoundCheckBox(
                        size: 22,
                        onTap: (selected) {},
                        border: Border.all(
                          width: 1,
                          color: CColors.lightBlueColor,
                        ),
                        isChecked: true,
                        checkedWidget: const Icon(
                          Icons.check_rounded,
                          size: 15,
                        ),
                        checkedColor: CColors.greenColor,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
