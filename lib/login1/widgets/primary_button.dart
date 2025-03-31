import 'package:flutter/material.dart';
import 'package:login_app/login1/common/common.dart';

class PrimaryButton extends StatefulWidget {
  final String label;
  const PrimaryButton({required this.label, super.key});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Login1Colors.blue,
                    const Color.fromARGB(255, 8, 128, 227),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(10),
              textStyle: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(widget.label, style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
