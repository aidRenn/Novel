import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'pages/welcome_page.dart';
import 'controllers/auth_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: _authController.isLoggedIn ? MainPage() : WelcomePage(),
    );
  }
}
