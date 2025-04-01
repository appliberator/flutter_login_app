import 'package:flutter/material.dart';
import 'package:login_app/login1/common/common.dart';
import 'package:login_app/login1/common/login1_styles.dart';

class LinkLabel extends StatelessWidget {
  final String label;
  final VoidCallback onClick;

  const LinkLabel(this.label, {required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Text(
        label,
        textAlign: TextAlign.right,
        style: Login1Styles.subtitle.copyWith(
          fontWeight: FontWeight.bold,
          color: Login1Colors.blue,
        ),
      ),
    );
  }
}
