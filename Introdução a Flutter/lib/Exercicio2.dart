import 'package:flutter/material.dart';

void main() => runApp(Exercicio2());

class Exercicio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: Border(bottom: BorderSide(color: Colors.black,
                                           width: 1)),
          elevation: 4,
          title: Text(
            'My Home Page',
            style: TextStyle(color: Colors.black87,
                             fontSize: 25),
          ),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Hello World!',
                    style: TextStyle(color: Colors.indigo,
                                     fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      side: BorderSide(color: Colors.blueGrey,
                                       width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // lógica do botão
                    },
                    child: Text(
                      'A button',
                      style: TextStyle(color: Colors.white,
                                      fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
