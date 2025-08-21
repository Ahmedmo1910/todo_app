import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_body.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFDFF2EB),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF4A628A),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child:const TasksBody(),
      ),
    );
  }
}

