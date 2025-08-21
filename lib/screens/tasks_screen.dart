import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/tasks_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomButton(),
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 40),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFDFF2EB), Color(0xFFB9E5E8), Color(0xFF7AB2D3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.playlist_add_check,
                color: Color(0xFF4A628A),
                size: 35,
              ),
              title: Text(
                'My Tasks',
                style: TextStyle(
                  color: Color(0xFF4A628A),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '4 Tasks',
              style: TextStyle(
                color: Color(0xFF4A628A),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            TasksWidget()
          ],
        ),
      ),
    );
  }
}
