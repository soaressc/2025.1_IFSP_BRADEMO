import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(Exercicio1());

class Exercicio1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
