import 'package:flutter/material.dart';

void main() => runApp(Exercicio1());

class Exercicio1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          shadowColor: Colors.black,
          elevation: 10,
          title: Text('Flutter is Fun!', style: TextStyle(color: Colors.white)),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.black12],
                ),
              ),
            ),
            Container(
              width: 120,
              height: 120,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(100.0),
              color: Colors.red,
              child: Text('Hi Mom 🐣'),
            ),
          ],
        ),
      ),
    );
  }
}