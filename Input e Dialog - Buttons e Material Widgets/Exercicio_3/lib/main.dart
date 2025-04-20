import 'package:flutter/material.dart';
import 'screens/task_home_page.dart';

void main() => runApp(const TaskApp());

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Tarefas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TaskHomePage(),
    );
  }
}
