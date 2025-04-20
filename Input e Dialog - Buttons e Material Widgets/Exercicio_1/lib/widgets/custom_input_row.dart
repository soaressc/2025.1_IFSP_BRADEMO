import 'package:flutter/material.dart';

class CustomInputRow extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Icon icon;
  final String? Function(String?)? validator;
  final bool readOnly;
  final VoidCallback? onTap;

  const CustomInputRow({
    required this.controller,
    required this.label,
    required this.icon,
    this.validator,
    this.readOnly = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          icon,
          SizedBox(width: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(labelText: label),
              validator: validator,
              readOnly: readOnly,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
