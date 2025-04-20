import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final bool completed;
  final ValueChanged<bool?> onChanged;

  const TaskCard({
    super.key,
    required this.title,
    required this.completed,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      color: Colors.amber[600],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
          trailing: Checkbox(
            value: completed,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
