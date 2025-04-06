import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            SvgPicture.network(
              'https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg',
              height: 50,
              width: 300,
            ),
            SizedBox(height: 20),
            LoginForm(),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text("New User? Create Account", style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
