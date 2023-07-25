import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/models/diagnosis_medication_model.dart';

import '../../models/card_models.dart';
import '../../models/data_list_table_model.dart';
import '../../models/search_patient_model.dart';
import '../../models/side_menu_model.dart';
import '../../models/activity_model.dart';

class ConstantLists {
  ConstantLists._();

  ///
  static List<String> membersList = [
    "Member 1",
    "Member 2",
    "Member 3",
  ];

  ///
  static List<String> filterList = [
    "Python Score",
    "Criticality",
    "Age",
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

  static List<SearchPatientModel> searchPatientList = [
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
    SearchPatientModel(
      patientId: "283",
      patientAddress: "Smith",
      patientName: "Wayne,",
    ),
  ];

  static List<DiagnosisMedicationModel> diagnosisMedicationList = [
    DiagnosisMedicationModel(
      title: "Diagnoses",
      diagnosisMedicationActivityList: [
        DiagnosisMedicationActivity(
          title: "Hypertension (High blood Pressure)",
        ),
        DiagnosisMedicationActivity(
          title: "Diabetes Mellitus",
        ),
        DiagnosisMedicationActivity(
          title: "Asthma",
        ),
        DiagnosisMedicationActivity(
          title: "Gastroesophageal Reflux",
        ),
        DiagnosisMedicationActivity(
          title: "Migraine Headaches",
        ),
      ],
    ),
    DiagnosisMedicationModel(
      title: "Medications",
      diagnosisMedicationActivityList: [
        DiagnosisMedicationActivity(
          title: "Beta-blockers",
        ),
        DiagnosisMedicationActivity(
          title: "Insulin",
        ),
        DiagnosisMedicationActivity(
          title: "Insulin",
        ),
        DiagnosisMedicationActivity(
          title: "Insulin",
        ),
        DiagnosisMedicationActivity(
          title: "Insulin",
        ),
        DiagnosisMedicationActivity(
          title: "Insulin",
        ),
      ],
    ),
    DiagnosisMedicationModel(
      title: "Diagnoses",
      diagnosisMedicationActivityList: [
        DiagnosisMedicationActivity(
          title: "Hypertension (High blood Pressure)",
        ),
        DiagnosisMedicationActivity(
          title: "Diabetes Mellitus",
        ),
        DiagnosisMedicationActivity(
          title: "Asthma",
        ),
        DiagnosisMedicationActivity(
          title: "Gastroesophageal Reflux",
        ),
        DiagnosisMedicationActivity(
          title: "Migraine Headaches",
        ),
      ],
    ),
  ];
  static List<DataListPrimaryTableModel> primaryTableDataList = [
    DataListPrimaryTableModel(
      id: "1",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "2",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "3",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "4",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "5",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "6",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "7",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "8",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "9",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "10",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "11",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "12",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "13",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "14",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
    DataListPrimaryTableModel(
      id: "15",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
      fifthColumn: "",
    ),
  ];
  static List<DataListSecondaryTableModel> secondaryTableDataList = [
    DataListSecondaryTableModel(
      id: "1",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "2",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "3",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "4",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "5",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "6",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "7",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "8",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "9",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "10",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "11",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "12",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "13",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "14",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
    DataListSecondaryTableModel(
      id: "15",
      name: "",
      thirdColumn: "",
      fourthColumn: "",
    ),
  ];
}
