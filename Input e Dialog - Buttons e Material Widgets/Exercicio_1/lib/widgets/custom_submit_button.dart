import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomSubmitButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 135, 135, 135),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        'Submit',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
