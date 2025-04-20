import 'package:flutter/material.dart';
import 'task_card.dart';

class TaskList extends StatelessWidget {
  final List<String> tasks;
  final List<bool> taskCompleted;
  final Function(int index, bool value) onToggle;

  const TaskList({
    super.key,
    required this.tasks,
    required this.taskCompleted,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskCard(
          title: tasks[index],
          completed: taskCompleted[index],
          onChanged: (value) => onToggle(index, value!),
        );
      },
    );
  }
}
