import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/constants/constant_lists.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  ScrollController dashboardScrollController = ScrollController();
  TextEditingController searchController = TextEditingController();
  TextEditingController patientSearchController = TextEditingController();
  TextEditingController dashboardDateController = TextEditingController();
  ScrollController toDoScrollController = ScrollController();
  ScrollController waitListScrollController = ScrollController();
  ScrollController remindersScrollController = ScrollController();

  //Scroll Controller for Scroll Component;
  ScrollController scrollComponentHorizontalController = ScrollController();
  ScrollController patientsDetailsScrollController = ScrollController();
  ScrollController diagnosisMedicationScrollController = ScrollController();
  ScrollController documentationScrollController = ScrollController();

  // Documentation Controller
  TextEditingController documentationTextController = TextEditingController();
  TextEditingController communicationTextController = TextEditingController();
  TextEditingController issueAlertTextController = TextEditingController();
  TextEditingController reportDateController = TextEditingController();

  //Table Scroll Controller
  ScrollController tableScrollController = ScrollController();

  final reportDateSelected = "".obs;
  final activityList = ConstantLists.activityList.obs;
  final droppedList = [
    false,
    false,
    false,
  ].obs;

  dashboardDatePickerFunction({required BuildContext context}) {
    List<String> months = [
      '', // Placeholder to make the list index start from 1.
      'January', 'February', 'March', 'April', 'May', 'June', 'July',
      'August', 'September', 'October', 'November', 'December',
    ];
    Future<DateTime?> picked = showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      ),
    );
    picked.then(
      (date) {
        if (date != null) {
          dashboardDateController.text =
              "${date.day} ${months[date.month]} ${date.year}";
        }
      },
    );
  }

  toggleActivitySelection({
    required int index,
    required int activityIndex,
    required bool checkValue,
  }) {
    final tempActivityValue = activityList[index].tasksList[activityIndex];
    tempActivityValue.value = checkValue;
    activityList[index].tasksList.removeAt(activityIndex);
    activityList[index].tasksList.insert(activityIndex, tempActivityValue);
  }

  toggleActivityDropView({required int index, required bool value}) {
    droppedList[index] = value;
  }

  reportDatePickerFunction({required BuildContext context}) {
    List<String> months = [
      '', // Placeholder to make the list index start from 1.
      'January', 'February', 'March', 'April', 'May', 'June', 'July',
      'August', 'September', 'October', 'November', 'December',
    ];
    Future<DateTime?> picked = showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      ),
    );
    picked.then(
      (date) {
        if (date != null) {
          reportDateController.text =
              "${date.day} ${months[date.month]} ${date.year}";
          reportDateSelected.value = reportDateController.text;
        }
      },
    );
  }

  dashBoardControllerJumpFunction() {
    dashboardScrollController.animateTo(0,
        duration: const Duration(
          milliseconds: 1000,
        ), //duration of scroll
        curve: Curves.fastOutSlowIn //scroll type
        );
  }
}
