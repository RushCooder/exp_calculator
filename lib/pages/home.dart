import 'package:calculator/pages/buttons/number_button.dart';
import 'package:calculator/pages/display/display.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children:  [
            const Expanded(
              flex: 4,
              child: Display(),
            ),
            Expanded(
              flex: 6,
              child: NumberButton(),
            ),
          ],
        ),
      ),
    );
  }
}
