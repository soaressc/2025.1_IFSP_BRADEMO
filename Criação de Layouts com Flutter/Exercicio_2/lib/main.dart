import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ColorScheme Example',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          surface: Colors.lightBlueAccent, // background será deprecated? substitui por surface
          onSurface: Colors.white,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Scaffold(
      backgroundColor: tema.colorScheme.primary,
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: tema.colorScheme.surface,
          child: Center(
            child: Text(
              'Fundo Azul',
              style: TextStyle(color: tema.colorScheme.onSurface),
            ),
          ),
        ),
      ),
    );
  }
}
