import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/data/task_data.dart';
import 'package:todo_app/screens/tasks_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  final taskData = TaskData();
  await taskData.loadTasks(); 

  runApp(
    ChangeNotifierProvider(
      create: (_) => taskData,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Todo App',
      home: TasksScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
