import 'package:flutter/material.dart';
import 'package:login_app/login1/common/login1_styles.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Login1Styles.title);
  }
}
