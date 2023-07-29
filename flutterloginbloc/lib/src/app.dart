import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Log in',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
