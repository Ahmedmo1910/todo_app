import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/data/task_data.dart';
import 'package:todo_app/widgets/task_list_tile.dart';

class TasksBody extends StatelessWidget {
  const TasksBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskListTile(
              text: taskData.tasks[index].task,
              isChecked: taskData.tasks[index].isDone,
              checkboxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              listTileDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
