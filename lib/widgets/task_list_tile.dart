import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;
  const TaskListTile(
      {super.key,
      required this.text,
      required this.isChecked,
      required this.checkboxChange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: const Color(0xFF4A628A),
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
