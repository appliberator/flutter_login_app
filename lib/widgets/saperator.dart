import 'package:flutter/material.dart';
import 'package:login_app/login1/common/login1_styles.dart';
import 'package:login_app/login1/common/common.dart';

class Saperator extends StatelessWidget {
  final String label;
  const Saperator({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 1,
          width: double.infinity,
          decoration: BoxDecoration(color: Login1Colors.border),
        ),
        Container(
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Text(label, style: Login1Styles.label),
        ),
      ],
    );
  }
}
