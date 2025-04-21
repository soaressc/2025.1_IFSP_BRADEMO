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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Container com tema global azul
            Container(
              width: 200,
              height: 100,
              color: tema.colorScheme.surface,
              child: Center(
                child: Text(
                  'Global',
                  style: TextStyle(
                    color: tema.colorScheme.onSurface,
                  ),
                ),
              ),
            ),

            // Container com tema local amarelo
            Theme(
              data: ThemeData(
                colorScheme: ColorScheme.light(
                  surface: Colors.amberAccent,
                  onSurface: Colors.black,
                ),
              ),
              child: Builder(   // Precisa do builder pra usar o Theme.of
                builder: (context) {
                  final localTheme = Theme.of(context);
                  return Container(
                    width: 100,
                    height: 100,
                    color: localTheme.colorScheme.surface,
                    child: Center(
                      child: Text(
                        'Local',
                        style: TextStyle(
                          color: localTheme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
