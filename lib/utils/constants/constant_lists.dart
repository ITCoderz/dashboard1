import 'package:flutter/material.dart';

import '../../models/card_models.dart';
import '../../models/side_menu_model.dart';
import '../../models/activity_model.dart';

class ConstantLists {
  ConstantLists._();

  ///
  static List<String> livePortalDropDownList = [
    "Open",
    "Closed",
    "Broadcast",
  ];

  ///
  static List<SideMenuModel> menuList = [
    SideMenuModel(
      menuTitle: "Dashboard",
      iconData: Icons.grid_view_outlined,
    ),
  ];
  static List<dynamic> cardsDataList = [
    VitalsModel(
      vitalTitle: "Check vitals on Morales",
      time: "Today 10:30 AM",
      timeRemaining: "30 Min",
    ),
    PatientUpdateModel(
      update:
          "What’s the update on patient’s intake and output, including food and fluid intake, and output of urine or stool?....",
      doctorName: "Dr. Hilary Marks",
      time: "09: 30 AM",
    ),
    StaffingReportModel(
      title: "STAFFING REPORT",
      time: "08:30 AM",
      report: "Mr. Dupont fell at 2 AM - stable but check 08:30 AM",
    ),
  ];
  static List<ActivityModel> activityList = [
    ActivityModel(
      activityName: "To Do",
      tasksList: [
        TaskModel(
          taskString: "Physical Examination Report",
          value: false,
        ),
        TaskModel(
          taskString: "Laboratory Test Results Reports",
          value: false,
        ),
        TaskModel(
          taskString: "Vital Signs Monitoring Record",
          value: false,
        ),
        TaskModel(
          taskString: "Pathology Report",
          value: false,
        ),
      ],
    ),
    ActivityModel(
      activityName: "Wait List",
      tasksList: [
        TaskModel(
          taskString: "Physical Examination Report",
          value: false,
        ),
        TaskModel(
          taskString: "Laboratory Test Results Reports",
          value: false,
        ),
        TaskModel(
          taskString: "Vital Signs Monitoring Record",
          value: false,
        ),
        TaskModel(
          taskString: "Pathology Report",
          value: false,
        ),
      ],
    ),
    ActivityModel(
      activityName: "Reminders",
      tasksList: [
        TaskModel(
          taskString: "Physical Examination Report",
          value: false,
        ),
        TaskModel(
          taskString: "Laboratory Test Results Reports",
          value: false,
        ),
        TaskModel(
          taskString: "Vital Signs Monitoring Record",
          value: false,
        ),
        TaskModel(
          taskString: "Pathology Report",
          value: false,
        ),
      ],
    ),
  ];
}
