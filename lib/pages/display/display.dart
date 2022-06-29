import 'package:calculator/pages/display/display_text.dart';
import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Consumer<CalculatorProvider>(
              builder: (context, provider, child) => DisplayText(
                title: provider.getResult.toString(),
              ),
            ),
          ),
          Expanded(
            child: Consumer<CalculatorProvider>(
              builder: (context, provider, child) => DisplayText(
                title: provider.getExpression.isEmpty? '0': provider.getExpression,
                isExp: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
