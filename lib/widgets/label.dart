import 'package:flutter/material.dart';
import 'package:login_app/login1/common/login1_styles.dart';

class Label extends StatelessWidget {
  final String text;
  const Label(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Login1Styles.subtitle);
  }
}
