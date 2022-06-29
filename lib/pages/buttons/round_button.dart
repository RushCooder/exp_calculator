import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  VoidCallback onPressed;
  Color? backgroundColor;
  Color? foregroundColor;
  final double? fontSize;
  RoundButton({
    required this.title,
    this.backgroundColor,
    required this.onPressed,
    this.fontSize,
    this.foregroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor ?? Colors.blueGrey.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: TextStyle(
                color: foregroundColor ?? Colors.white60,
                fontSize: fontSize ?? 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
