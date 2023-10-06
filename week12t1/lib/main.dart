import 'package:flutter/material.dart';
import 'BuildTextField.dart';
import 'Loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

