import 'package:flutter/material.dart';
import '../widgets/task_list.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  List<bool> taskCompleted = List.generate(5, (_) => false);
  List<String> tasks = List.generate(
    5,
    (index) => 'Task 2022-07-09 18:08:3${index + 1}.${index + 1}73444',
  );

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Informação'),
        content: const Text('Você está no App de Notas de Tarefas'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final uncompletedCount = taskCompleted.where((e) => !e).length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Kindacode.com', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('View Completed Tasks'),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'You have $uncompletedCount uncompleted tasks',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TaskList(
                tasks: tasks,
                taskCompleted: taskCompleted,
                onToggle: (index, value) {
                  setState(() {
                    taskCompleted[index] = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        onPressed: _showAboutDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
