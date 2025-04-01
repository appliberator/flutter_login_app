import 'package:flutter/material.dart';
import 'package:login_app/login1/common/login1_styles.dart';
import 'package:login_app/login1/common/common.dart';

class TextBox extends StatefulWidget {
  final String label;
  const TextBox({required this.label, super.key});

  @override
  State<TextBox> createState() => _TextBoxState();
}

OutlineInputBorder _textInputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: color, width: 1),
  );
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: Login1Styles.label),
        SizedBox(height: 3),
        TextField(
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 14,
            color: Login1Colors.black,
            height: 1.4,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            isDense: true,
            hintText: "",
            border: _textInputBorder(Login1Colors.border),
            errorBorder: _textInputBorder(Colors.red.shade200),
            enabledBorder: _textInputBorder(Login1Colors.border),
            focusedBorder: _textInputBorder(Login1Colors.grey),
            disabledBorder: _textInputBorder(Login1Colors.grey.withAlpha(10)),
            focusedErrorBorder: _textInputBorder(Colors.red),
          ),
        ),
      ],
    );
  }
}
