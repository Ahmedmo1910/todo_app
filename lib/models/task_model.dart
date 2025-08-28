class TaskModel {
  int? id;
  final String task;
  bool isDone;

  TaskModel({
    this.id,
    required this.task,
    this.isDone = false,
  });
  void doneChange() {
    isDone = !isDone;
  }
  
}
