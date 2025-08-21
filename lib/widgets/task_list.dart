import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(''),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color(0xFF4A628A),
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
    );
  }
}
