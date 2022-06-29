import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String title;
  final bool isExp;
  const DisplayText({required this.title, this.isExp = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        title,
        style: TextStyle(
          fontSize: isExp ? 20 : 60,
          color: isExp ? Colors.white38 : Colors.white60,
        ),
        maxLines: 5,
      ),
    );
  }
}
