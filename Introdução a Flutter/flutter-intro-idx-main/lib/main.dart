import 'package:flutter/material.dart';
import 'Exercicio1.dart';  // Importando a página Exercicio1
import 'Exercicio2.dart';  // Importando a página Exercicio2

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => MainPage(),
        '/exercicio1': (context) => Exercicio1(),
        '/exercicio2': (context) => Exercicio2(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercicio1'); // Navegar para Exercicio1
              },
              child: Text('Ir para Exercicio 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercicio2'); // Navegar para Exercicio2
              },
              child: Text('Ir para Exercicio 2'),
            ),
          ],
        ),
      ),
    );
  }
}
