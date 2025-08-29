import 'package:flutter/material.dart';
import 'package:todo_app/helper/database_helper.dart';
import 'package:todo_app/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> tasks = [];

  Future<void> loadTasks() async {
    tasks = await DatabaseHelper.getTasks();
    notifyListeners();
  }

  Future<void> addTask(String newTaskTitle) async {
    TaskModel newTask = TaskModel(task: newTaskTitle);
    await DatabaseHelper.insertTask(newTask);
    await loadTasks();
  }

  Future<void> updateTask(TaskModel task) async {
    task.doneChange();
    if (task.id != null) {
      await DatabaseHelper.updateTask(task, task.id!);
    }
   await loadTasks();
  }

  Future<void> deleteTask(TaskModel task) async {
    if (task.id != null) {
      await DatabaseHelper.deleteTask(task.id!);
    }
    tasks.remove(task);
    await loadTasks();
  }
}
