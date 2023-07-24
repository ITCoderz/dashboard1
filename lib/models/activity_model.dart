class ActivityModel {
  String activityName;
  List<TaskModel> tasksList;

  ActivityModel({
    required this.activityName,
    required this.tasksList,
  });
}

class TaskModel {
  String taskString;
  bool value;

  TaskModel({
    required this.taskString,
    required this.value,
  });
}
