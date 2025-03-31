import 'package:flutter/material.dart';
import 'package:login_app/login1/features/logint1.dart';

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
    return Login1();
  }
}
