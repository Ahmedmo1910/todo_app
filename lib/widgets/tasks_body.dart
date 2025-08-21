import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_list.dart';

class TasksBody extends StatelessWidget {
  const TasksBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskList()
      ],
    
    );
  }
}