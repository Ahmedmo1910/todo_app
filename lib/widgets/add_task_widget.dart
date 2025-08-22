import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/data/task_data.dart';

class AddTaskWidget extends StatelessWidget {
 // final Function addTaskCallback;
  const AddTaskWidget({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFDFF2EB),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Add Task',
            style: TextStyle(
              color: Color(0xFF4A628A),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (newText) {
              newTaskTitle = newText;
            },
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF4A628A), width: 2),
              ),
            ),
            cursorColor: Color(0xFF4A628A),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Color(0xFFDFF2EB),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF7AB2D3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
