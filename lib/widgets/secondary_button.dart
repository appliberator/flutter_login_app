import 'package:flutter/material.dart';
import 'package:login_app/login1/common/login1_styles.dart';
import 'package:login_app/login1/common/common.dart';

class SecondaryButton extends StatefulWidget {
  final String label;
  final Widget? prefixIcon;
  final VoidCallback onPress;
  const SecondaryButton({
    required this.label,
    required this.onPress,
    this.prefixIcon,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _SecondaryButtonState();
  }
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(color: Login1Colors.border, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: widget.onPress,
      child: Container(
        height: 48,
        alignment: Alignment.center,
        margin: EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.prefixIcon != null) widget.prefixIcon!,
            SizedBox(width: 10),
            Text(
              widget.label,
              style: Login1Styles.label.copyWith(
                color: Login1Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
