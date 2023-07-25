class DiagnosisMedicationModel {
  String title;
  List<DiagnosisMedicationActivity> diagnosisMedicationActivityList;

  DiagnosisMedicationModel({
    required this.title,
    required this.diagnosisMedicationActivityList,
  });
}

class DiagnosisMedicationActivity {
  String title;

  DiagnosisMedicationActivity({
    required this.title,
  });
}
