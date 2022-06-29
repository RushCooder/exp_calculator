import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  num _result = 0;
  String _expression = '';
  final operators = ['+', '-', 'x', '/', '%'];

  void calculate() {
    if (_expression.isNotEmpty) {
      String finalExpression = _expression;
      finalExpression = _expression.replaceAll('x', '*');

      Parser p = Parser();
      Expression exp = p.parse(finalExpression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      _result = eval;
      notifyListeners();
    }
  }

  void setDisplayResult(String val) {
    String x = val;

    if (_expression.isNotEmpty) {
      if ((operators.contains(_expression[_expression.length - 1]) &&
          (operators.contains(val)))) {
        x = '';
      }
    } else {
      if (operators.contains(val)) {
        x = '';
      }
    }
    _expression += x;

    notifyListeners();
  }

  void deleteExpression() {
    if (_expression.isNotEmpty) {
      _expression = _expression.substring(0, _expression.length - 1);
    }

    notifyListeners();
  }

  void resetValue() {
    _expression = '';
    _result = 0;
    notifyListeners();
  }

  num get getResult => _result;
  String get getExpression => _expression;
}
