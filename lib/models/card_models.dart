class VitalsModel {
  String vitalTitle, time, timeRemaining;

  VitalsModel({
    required this.vitalTitle,
    required this.time,
    required this.timeRemaining,
  });
}

class PatientUpdateModel {
  String update, doctorName, time;

  PatientUpdateModel({
    required this.update,
    required this.doctorName,
    required this.time,
  });
}

class StaffingReportModel {
  String title, time, report;

  StaffingReportModel({
    required this.title,
    required this.time,
    required this.report,
  });
}