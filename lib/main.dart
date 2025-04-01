import 'package:flutter/material.dart';
import 'package:login_app/login1/features/logint1.dart';
import 'package:login_app/login2/features/login2.dart';

void main() {
  return runApp(LoginApp());
}

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Login2());
  }
}
