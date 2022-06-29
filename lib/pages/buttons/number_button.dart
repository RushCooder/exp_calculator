import 'package:calculator/pages/buttons/round_button.dart';
import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberButton extends StatelessWidget {
  NumberButton({Key? key}) : super(key: key);

  // void setValue(String val) {
  //   calculatorProvider.setDisplayResult(val);
  // }

  @override
  Widget build(BuildContext context) {
    List<RoundButton> roundButtons = [
      // ******* row one ***********
      //Clear button
      RoundButton(
        title: 'C',
        backgroundColor: Colors.cyan.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().resetValue();
        },
      ),
      //Delete button
      RoundButton(
        title: 'DEL',
        backgroundColor: Colors.red.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().deleteExpression();
        },
      ),
      //% button
      RoundButton(
        title: '%',
        backgroundColor: Colors.grey.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('%');
        },
      ),
      //+ button
      RoundButton(
        title: '+',
        backgroundColor: Colors.grey.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('+');
        },
      ),

      // ******* row two ***********
      //7 button
      RoundButton(
        title: '7',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('7');
        },
      ),
      // 8 button
      RoundButton(
        title: '8',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('8');
        },
      ),
      // 9 button
      RoundButton(
        title: '9',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('9');
        },
      ),
      // - button
      RoundButton(
        title: '-',
        backgroundColor: Colors.grey.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('-');
        },
      ),

      // ******* row three ***********
      // 4 button
      RoundButton(
        title: '4',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('4');
        },
      ),
      // 5 button
      RoundButton(
        title: '5',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('5');
        },
      ),
      // 6 button
      RoundButton(
        title: '6',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('6');
        },
      ),
      // x button
      RoundButton(
        title: 'x',
        backgroundColor: Colors.grey.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('x');
        },
      ),

      // ******* row fourth ***********
      // 1 button
      RoundButton(
        title: '1',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('1');
        },
      ),
      // 2 button
      RoundButton(
        title: '2',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('2');
        },
      ),
      // 3 button
      RoundButton(
        title: '3',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('3');
        },
      ),
      // / button
      RoundButton(
        title: '/',
        backgroundColor: Colors.grey.shade700,
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('/');
        },
      ),

      // ******* row fourth ***********
      // 0 button
      RoundButton(
        title: '0',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('0');
        },
      ),
      // . button
      RoundButton(
        title: '.',
        onPressed: () {
          context.read<CalculatorProvider>().setDisplayResult('.');
        },
      ),
      // = button
      RoundButton(
        title: '=',
        backgroundColor: Colors.lightGreen.withOpacity(0.5),
        fontSize: 40,
        onPressed: () {
          context.read<CalculatorProvider>().calculate();
        },
      ),
    ];

    return Container(
        // color: Colors.green,
      padding: const EdgeInsets.all(10.0),
        child: Column(
      children: [
        //Row one
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              roundButtons[0],
              roundButtons[1],
              roundButtons[2],
              roundButtons[3],
            ],
          ),
        ),
        //Row two
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              roundButtons[4],
              roundButtons[5],
              roundButtons[6],
              roundButtons[7],
            ],
          ),
        ),

        //Row three
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              roundButtons[8],
              roundButtons[9],
              roundButtons[10],
              roundButtons[11],
            ],
          ),
        ),

        //Row four
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              roundButtons[12],
              roundButtons[13],
              roundButtons[14],
              roundButtons[15],
            ],
          ),
        ),

        //Row four
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Expanded(child: roundButtons[16]),

                 Expanded(child: roundButtons[17]),

                Expanded(
                  flex: 2,
                  child: roundButtons[18],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
