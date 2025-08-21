import 'package:flutter/material.dart';
import 'package:todo_app/widgets/add_task_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const AddTaskWidget(),
            ),
          ),
        );
      },
      backgroundColor: const Color(0xFF4A628A),
      child: const Icon(
        Icons.add,
        color: Color(0xFFDFF2EB),
      ),
    );
  }
}
