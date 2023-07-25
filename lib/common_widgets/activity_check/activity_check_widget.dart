import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/models/activity_model.dart';
import 'package:gap_cure_dashboard/screens/dashboard/controller/dashboard_controller.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';
import 'package:get/get.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../utils/colors/app_colors.dart';

class ActivityCheckCardWidget extends StatelessWidget {
  final ActivityModel activityModel;
  final int itemIndex;
  final bool isDropped;
  final Function()? dropFunction;
  final ScrollController scrollController;

  const ActivityCheckCardWidget({
    super.key,
    required this.activityModel,
    required this.itemIndex,
    required this.isDropped,
    required this.dropFunction,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 310,
        maxWidth: 380,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  activityModel.activityName,
                  style: CustomTextStyles.white720,
                ),
                const Spacer(),
                IconButton(
                  onPressed: dropFunction,
                  icon: Icon(
                    isDropped
                        ? Icons.arrow_drop_up_sharp
                        : Icons.arrow_drop_down_sharp,
                    color: CColors.whiteColor,
                    size: 20,
                  ),
                )
              ],
            ),
            isDropped
                ? Scrollbar(
                    controller: scrollController,
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: scrollController,
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
                              bottom: index ==
                                      activityModel.tasksList.length - 1
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
                                onTap: (value) {
                                  Get.find<DashboardController>()
                                      .toggleActivitySelection(
                                          index: itemIndex,
                                          activityIndex: index,
                                          checkValue: value!);
                                },
                                border: Border.all(
                                  width: 1,
                                  color: activityModel.tasksList[index].value
                                      ? Colors.transparent
                                      : CColors.lightBlueColor,
                                ),
                                isChecked: activityModel.tasksList[index].value,
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
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
