import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/common_widgets/card_widgets/report_card.dart';
import 'package:gap_cure_dashboard/common_widgets/card_widgets/update_card.dart';
import 'package:gap_cure_dashboard/common_widgets/card_widgets/vitals_card.dart';
import 'package:gap_cure_dashboard/reusable_widgets/badge_widget.dart';
import 'package:gap_cure_dashboard/reusable_widgets/circular_container.dart';
import 'package:gap_cure_dashboard/reusable_widgets/text_fields/custom_textfield.dart';
import 'package:gap_cure_dashboard/utils/alignment/widget_alignment.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/sizes/platform_sizes.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';
import 'package:get/get.dart';
import '../../../common_widgets/activity_check/activity_check_widget.dart';
import '../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constant_lists.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 1,
      width: context.width * 1,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: CColors.backgroundGradientColor,
        ),
      ),
      child: Scaffold(
        body: LayoutBuilder(builder: (
          BuildContext context,
          BoxConstraints constraint,
        ) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomMenuBar(
                maxWidth: constraint.maxWidth,
                selectedIndex: 0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      constraint.maxWidth < PlatformSizes.minMediumScreenWidth
                          ? const SizedBox(
                              height: 125,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircularContainer(
                                    width: 100,
                                    height: 100,
                                  ),
                                  Spacer()
                                ],
                              ),
                            ).alignWidget(
                              alignment: Alignment.centerRight,
                            )
                          : const SizedBox.shrink(),
                      SizedBox(
                        height: constraint.maxWidth <
                                PlatformSizes.minMediumScreenWidth
                            ? 170
                            : 125,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomTextField(
                                      textEditingController:
                                          TextEditingController(),
                                    ),
                                    25.pw,
                                    constraint.maxWidth >
                                            PlatformSizes.minMediumScreenWidth
                                        ? const BadgeWidget(
                                            iconData: Icons.message_outlined,
                                          ).alignWidget(
                                            alignment: Alignment.centerRight,
                                          )
                                        : const SizedBox.shrink(),
                                  ],
                                ),
                                10.ph,
                                constraint.maxWidth <
                                        PlatformSizes.minMediumScreenWidth
                                    ? const BadgeWidget(
                                        iconData: Icons.message_outlined,
                                      ).alignWidget(
                                        alignment: Alignment.centerRight,
                                      )
                                    : const SizedBox.shrink(),
                                const Spacer(),
                                const Text(
                                  "Greetings",
                                  style: CustomTextStyles.white418,
                                ),
                                10.pw,
                                const Text(
                                  "James Cameroon",
                                  style: CustomTextStyles.white626,
                                ),
                              ],
                            ),
                            const Spacer(),
                            constraint.maxWidth >
                                    PlatformSizes.minMediumScreenWidth
                                ? const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircularContainer(
                                        width: 100,
                                        height: 100,
                                      ),
                                      Spacer()
                                    ],
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      20.ph,
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ConstantLists.cardsDataList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 230,
                          crossAxisCount: constraint.maxWidth >
                                  PlatformSizes.minLargeScreenWidth + 250
                              ? 3
                              : constraint.maxWidth <
                                          PlatformSizes.minLargeScreenWidth +
                                              250 &&
                                      constraint.maxWidth >
                                          PlatformSizes.minMediumScreenWidth -
                                              50
                                  ? 2
                                  : 1,
                          crossAxisSpacing: 25.0,
                          mainAxisSpacing: 25.0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return index == 0
                              ? VitalsCardWidget(
                                  vitalsModel:
                                      ConstantLists.cardsDataList[index],
                                )
                              : index == 1
                                  ? UpdatesCardWidget(
                                      patientUpdateModel:
                                          ConstantLists.cardsDataList[index],
                                    )
                                  : ReportCardWidget(
                                      staffingReportModel:
                                          ConstantLists.cardsDataList[index],
                                    );
                        },
                      ),
                      20.ph,
                      Wrap(
                        runSpacing: 25.0,
                        spacing: 25.0,
                        children: [
                          for (int index = 0;
                              index < ConstantLists.activityList.length;
                              index++) ...[
                            ActivityCheckCardWidget(
                              activityModel: ConstantLists.activityList[index],
                            )
                          ]
                        ],
                      ),
                      20.ph
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
