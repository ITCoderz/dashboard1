import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap_cure_dashboard/common_widgets/background_container/background_container.dart';
import 'package:gap_cure_dashboard/common_widgets/card_widgets/report_card.dart';
import 'package:gap_cure_dashboard/common_widgets/card_widgets/update_card.dart';
import 'package:gap_cure_dashboard/common_widgets/card_widgets/vitals_card.dart';
import 'package:gap_cure_dashboard/common_widgets/patient_list/patient_list_tile_widget.dart';
import 'package:gap_cure_dashboard/reusable_widgets/badge_widget.dart';
import 'package:gap_cure_dashboard/reusable_widgets/buttons/text_button.dart';
import 'package:gap_cure_dashboard/reusable_widgets/circular_container.dart';
import 'package:gap_cure_dashboard/reusable_widgets/dropdowns/custom_dropdown.dart';
import 'package:gap_cure_dashboard/reusable_widgets/tables/data_list_table/primary_data_list_table.dart';
import 'package:gap_cure_dashboard/reusable_widgets/text_fields/custom_date_field.dart';
import 'package:gap_cure_dashboard/reusable_widgets/text_fields/custom_search_field.dart';
import 'package:gap_cure_dashboard/reusable_widgets/text_fields/custom_textfield.dart';
import 'package:gap_cure_dashboard/utils/alignment/widget_alignment.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/sizes/platform_sizes.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';
import 'package:get/get.dart';
import '../../../common_widgets/activity_check/activity_check_widget.dart';
import '../../../common_widgets/doctor_activity_tile/doctor_activity_tile_widget.dart';
import '../../../reusable_widgets/dividers.dart';
import '../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../../reusable_widgets/tables/data_list_table/secondary_data_list_table.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constant_lists.dart';
import '../controller/dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());
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
        body: LayoutBuilder(
          builder: (
            BuildContext context,
            BoxConstraints constraint,
          ) {
            return SingleChildScrollView(
              controller: dashboardController.dashboardScrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomMenuBar(
                        maxWidth: constraint.maxWidth,
                        selectedIndex: 0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            constraint.maxWidth <
                                    PlatformSizes.minMediumScreenWidth + 360
                                ? SizedBox(
                                    height: 170,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const CircularContainer(
                                          width: 100,
                                          height: 100,
                                          widget: Text(
                                            "140",
                                            style: CustomTextStyles.white636,
                                          ),
                                        ),
                                        10.ph,
                                        const Spacer(),
                                        CustomDateField(
                                          textEditingController:
                                              dashboardController
                                                  .dashboardDateController,
                                          onTapFunction: () {
                                            dashboardController
                                                .dashboardDatePickerFunction(
                                              context: context,
                                            );
                                          },
                                          showCursor: false,
                                        ),
                                        10.ph,
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
                                  : 160,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomSearchTextField(
                                            textEditingController:
                                                dashboardController
                                                    .searchController,
                                            hintStyle:
                                                CustomTextStyles.hintTextStyle,
                                            textStyle:
                                                CustomTextStyles.textFieldStyle,
                                          ),
                                          20.pw,
                                          constraint.maxWidth >
                                                  PlatformSizes
                                                      .minMediumScreenWidth
                                              ? const BadgeWidget(
                                                  iconData:
                                                      Icons.message_outlined,
                                                ).alignWidget(
                                                  alignment:
                                                      Alignment.centerRight,
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
                                          PlatformSizes.minMediumScreenWidth +
                                              360
                                      ? Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const CircularContainer(
                                              width: 100,
                                              height: 100,
                                              widget: Text(
                                                "140",
                                                style:
                                                    CustomTextStyles.white636,
                                              ),
                                            ),
                                            const Spacer(),
                                            CustomDateField(
                                              textEditingController:
                                                  dashboardController
                                                      .dashboardDateController,
                                              onTapFunction: () {
                                                dashboardController
                                                    .dashboardDatePickerFunction(
                                                  context: context,
                                                );
                                              },
                                            ),
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
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 230,
                                crossAxisCount: constraint.maxWidth >
                                        PlatformSizes.minLargeScreenWidth + 250
                                    ? 3
                                    : constraint.maxWidth <
                                                PlatformSizes
                                                        .minLargeScreenWidth +
                                                    250 &&
                                            constraint.maxWidth >
                                                PlatformSizes
                                                        .minMediumScreenWidth -
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
                                            patientUpdateModel: ConstantLists
                                                .cardsDataList[index],
                                          )
                                        : ReportCardWidget(
                                            staffingReportModel: ConstantLists
                                                .cardsDataList[index],
                                          );
                              },
                            ),
                            20.ph,
                            Wrap(
                              runSpacing: 25.0,
                              spacing: 25.0,
                              children: [
                                for (int index = 0;
                                    index <
                                        dashboardController.activityList.length;
                                    index++) ...[
                                  Obx(() {
                                    return ActivityCheckCardWidget(
                                      activityModel: dashboardController
                                          .activityList[index],
                                      itemIndex: index,
                                      isDropped: dashboardController
                                          .droppedList[index],
                                      dropFunction: () {
                                        dashboardController
                                            .toggleActivityDropView(
                                          index: index,
                                          value: !dashboardController
                                              .droppedList[index],
                                        );
                                      },
                                      scrollController: index == 0
                                          ? dashboardController
                                              .toDoScrollController
                                          : index == 1
                                              ? dashboardController
                                                  .waitListScrollController
                                              : dashboardController
                                                  .remindersScrollController,
                                    );
                                  })
                                ]
                              ],
                            ),
                            20.ph,
                            BackgroundContainerWidget(
                              height: 555,
                              needBottomPadding: false,
                              widget: Scrollbar(
                                controller: dashboardController
                                    .scrollComponentHorizontalController,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    controller: dashboardController
                                        .scrollComponentHorizontalController,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: constraint.maxWidth > 640
                                              ? 500
                                              : 370,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 15,
                                            horizontal: 20,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child:
                                                        CustomSearchTextField(
                                                      hintStyle:
                                                          CustomTextStyles
                                                              .hintTextStyle,
                                                      textStyle:
                                                          CustomTextStyles
                                                              .textFieldStyle,
                                                      textEditingController:
                                                          dashboardController
                                                              .patientSearchController,
                                                    ),
                                                  ),
                                                  20.pw,
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const FaIcon(
                                                      FontAwesomeIcons.sliders,
                                                      color: CColors.whiteColor,
                                                    ),
                                                  ),
                                                  25.pw,
                                                ],
                                              ),
                                              20.ph,
                                              Expanded(
                                                child: Scrollbar(
                                                  controller: dashboardController
                                                      .patientsDetailsScrollController,
                                                  child: ListView.separated(
                                                    controller: dashboardController
                                                        .patientsDetailsScrollController,
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 25,
                                                    ),
                                                    itemCount: ConstantLists
                                                        .searchPatientList
                                                        .length,
                                                    separatorBuilder:
                                                        (BuildContext context,
                                                                int index) =>
                                                            10.ph,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return PatientListTileWidget(
                                                        searchPatientModel:
                                                            ConstantLists
                                                                    .searchPatientList[
                                                                index],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const CustomVerticalDivider(),
                                        Container(
                                          width: constraint.maxWidth > 640
                                              ? 500
                                              : 370,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 15,
                                            horizontal: 20,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: const TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "Derrek Baldwin ",
                                                      style: CustomTextStyles
                                                          .white720,
                                                    ),
                                                    TextSpan(
                                                      text: "(ID #12345678)",
                                                      style: CustomTextStyles
                                                          .whiteAccent416,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              5.ph,
                                              const Text(
                                                "23, March,1968",
                                                style: CustomTextStyles
                                                    .whiteAccentTwo416,
                                              ),
                                              10.ph,
                                              const CustomHorizontalDivider(),
                                              Expanded(
                                                child: Scrollbar(
                                                  controller: dashboardController
                                                      .diagnosisMedicationScrollController,
                                                  child: ListView.separated(
                                                    controller: dashboardController
                                                        .diagnosisMedicationScrollController,
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 25,
                                                    ),
                                                    itemCount: ConstantLists
                                                        .diagnosisMedicationList
                                                        .length,
                                                    separatorBuilder:
                                                        (BuildContext context,
                                                                int index) =>
                                                            20.ph,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return DoctorActivityTileWidget(
                                                        diagnosisMedicationModel:
                                                            ConstantLists
                                                                    .diagnosisMedicationList[
                                                                index],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const CustomVerticalDivider(),
                                        Container(
                                          width: constraint.maxWidth > 640
                                              ? 500
                                              : 370,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 15,
                                            horizontal: 20,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Documentation",
                                                style:
                                                    CustomTextStyles.white516,
                                              ),
                                              5.ph,
                                              const CustomHorizontalDivider(),
                                              5.ph,
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Choose Date ",
                                                    style: CustomTextStyles
                                                        .white414,
                                                  ),
                                                  3.pw,
                                                  const Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: CColors.whiteColor,
                                                  ),
                                                  3.pw,
                                                  Obx(() {
                                                    return Text(
                                                      dashboardController
                                                          .reportDateSelected
                                                          .value,
                                                      style: CustomTextStyles
                                                          .white414,
                                                    );
                                                  }),
                                                ],
                                              ),
                                              5.ph,
                                              const CustomHorizontalDivider(),
                                              20.ph,
                                              Expanded(
                                                child: Scrollbar(
                                                  controller: dashboardController
                                                      .documentationScrollController,
                                                  child: SingleChildScrollView(
                                                    controller: dashboardController
                                                        .documentationScrollController,
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 25,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          "Enter Documentation",
                                                          style:
                                                              CustomTextStyles
                                                                  .white414,
                                                        ),
                                                        5.ph,
                                                        CustomTextField(
                                                          textStyle:
                                                              CustomTextStyles
                                                                  .textFieldStyle,
                                                          textEditingController:
                                                              dashboardController
                                                                  .documentationTextController,
                                                          width:
                                                              context.width * 1,
                                                        ),
                                                        5.ph,
                                                        const Text(
                                                          "Standard Communication",
                                                          style:
                                                              CustomTextStyles
                                                                  .white414,
                                                        ),
                                                        5.ph,
                                                        CustomTextField(
                                                          textStyle:
                                                              CustomTextStyles
                                                                  .textFieldStyle,
                                                          textEditingController:
                                                              dashboardController
                                                                  .communicationTextController,
                                                          width:
                                                              context.width * 1,
                                                        ),
                                                        5.ph,
                                                        const Text(
                                                          "Issue Alert",
                                                          style:
                                                              CustomTextStyles
                                                                  .white414,
                                                        ),
                                                        5.ph,
                                                        CustomTextField(
                                                          textStyle:
                                                              CustomTextStyles
                                                                  .textFieldStyle,
                                                          textEditingController:
                                                              dashboardController
                                                                  .issueAlertTextController,
                                                          width:
                                                              context.width * 1,
                                                        ),
                                                        5.ph,
                                                        CustomDropDown(
                                                          onChanged: (val) {},
                                                          hintText:
                                                              "Select Members",
                                                          mappingList:
                                                              ConstantLists
                                                                  .membersList,
                                                          isIconKeyBoardArrowDown:
                                                              true,
                                                          width:
                                                              context.width * 1,
                                                          height: 50,
                                                        ),
                                                        5.ph,
                                                        const CustomHorizontalDivider(),
                                                        5.ph,
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                              "Report Date",
                                                              style:
                                                                  CustomTextStyles
                                                                      .white414,
                                                            ),
                                                            3.pw,
                                                            const Icon(
                                                              Icons
                                                                  .calendar_today_outlined,
                                                              color: CColors
                                                                  .whiteColor,
                                                            ),
                                                            3.pw,
                                                            Obx(() {
                                                              return Text(
                                                                dashboardController
                                                                    .reportDateSelected
                                                                    .value,
                                                                style:
                                                                    CustomTextStyles
                                                                        .white414,
                                                              );
                                                            }),
                                                          ],
                                                        ),
                                                        5.ph,
                                                        CustomTextField(
                                                          textStyle:
                                                              CustomTextStyles
                                                                  .textFieldStyle,
                                                          textEditingController:
                                                              dashboardController
                                                                  .reportDateController,
                                                          showCursor: false,
                                                          width:
                                                              context.width * 1,
                                                          onTapFunction: () {
                                                            dashboardController
                                                                .reportDatePickerFunction(
                                                                    context:
                                                                        context);
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            20.ph,
                            BackgroundContainerWidget(
                              height: 600,
                              needBottomPadding: false,
                              needBorder: false,
                              widget: Scrollbar(
                                controller:
                                    dashboardController.tableScrollController,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    controller: dashboardController
                                        .tableScrollController,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        BackgroundContainerWidget(
                                          width: 550,
                                          needBottomPadding: true,
                                          needBorder: true,
                                          widget: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              10.ph,
                                              const Text(
                                                "Patient List",
                                                style:
                                                    CustomTextStyles.white618,
                                              ),
                                              10.ph,
                                              const CustomHorizontalDivider(),
                                              Expanded(
                                                child: PrimaryDataListTable(
                                                  allDataList: ConstantLists
                                                      .primaryTableDataList,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        20.pw,
                                        BackgroundContainerWidget(
                                          width: 550,
                                          needBottomPadding: true,
                                          needBorder: true,
                                          widget: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              10.ph,
                                              const Text(
                                                "Staff List",
                                                style:
                                                    CustomTextStyles.white618,
                                              ),
                                              10.ph,
                                              const CustomHorizontalDivider(),
                                              Expanded(
                                                child: PrimaryDataListTable(
                                                  allDataList: ConstantLists
                                                      .primaryTableDataList,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            20.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Patient List",
                                  style: CustomTextStyles.white626,
                                ),
                                CustomDropDown(
                                  onChanged: (val) {},
                                  hintText: "Filter",
                                  mappingList: ConstantLists.filterList,
                                  needBorder: true,
                                  width: 200,
                                  height: 50,
                                ),
                              ],
                            ),
                            10.ph,
                            BackgroundContainerWidget(
                              width: context.width * 1,
                              height: 700,
                              needBottomPadding: true,
                              needBorder: true,
                              widget: SecondaryDataListTable(
                                allDataList:
                                    ConstantLists.secondaryTableDataList,
                              ),
                            ),
                            20.ph
                          ],
                        ).paddingOnly(
                          left: 20,
                          right: 30,
                          top: 20,
                          bottom: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    height: 300,
                    width: context.width * 1,
                    decoration: BoxDecoration(
                      color: CColors.darkColor.withOpacity(0.30),
                      boxShadow: [
                        BoxShadow(
                          color: CColors.lightBlueColor.withOpacity(0.1),
                          blurRadius: 50,
                          offset: const Offset(0, -30), // Shadow position
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        constraint.maxWidth >
                                PlatformSizes.minLargeScreenWidth.round()
                            ? 300.pw
                            : 80.pw,
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gap Cure",
                            style: CustomTextStyles.white738,
                          ),
                        ),
                        50.pw,
                        Expanded(
                          child: Wrap(
                            spacing: 30,
                            runSpacing: 30,
                            children: [
                              CustomTextButton(
                                text: "Home",
                                onPressedFunction: () {},
                                textStyle: CustomTextStyles.white420,
                              ),
                              CustomTextButton(
                                text: "Dashboard",
                                onPressedFunction: () {
                                  dashboardController
                                      .dashBoardControllerJumpFunction();
                                },
                                textStyle: CustomTextStyles.white420,
                              ),
                              CustomTextButton(
                                text: "About Us",
                                onPressedFunction: () {},
                                textStyle: CustomTextStyles.white420,
                              ),
                              CustomTextButton(
                                text: "Contact Us",
                                onPressedFunction: () {},
                                textStyle: CustomTextStyles.white420,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
