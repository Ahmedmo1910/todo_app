import 'package:flutter/material.dart';
import 'package:todo_app/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> tasks = [];

  void addTask(String newTaskTitle) {
    tasks.add(
      TaskModel(task: newTaskTitle),
    );
    notifyListeners();
  }

  void updateTask(TaskModel task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(TaskModel task) {
    tasks.remove(task);
    notifyListeners();
  }
}
