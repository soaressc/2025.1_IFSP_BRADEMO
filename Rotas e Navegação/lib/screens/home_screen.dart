import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter By Example", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,),
      body: Center(
        child: SvgPicture.network(
          'https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg',
          height: 80,
          width: 800,
        ),
      ),
    );
  }
}
