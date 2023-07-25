import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  double _operand1 = 0;

  double _operand2 = 0;

  double _result = 0;

  double get operand1 => _operand1;

  double get operand2 => _operand2;

  double get result => _result;

  set setOperand1(double newValue) {
    _operand1 = newValue;
    notifyListeners();
  }

  set setOperand2(double newValue) {
    _operand2 = newValue;
    notifyListeners();
  }

  void add() {
    _result = _operand1 + _operand2;
    notifyListeners();
  }

  void multiply() {
    _result = _operand1 * _operand2;
    notifyListeners();
  }

  void subtract() {
    _result = _operand1 - _operand2;
    notifyListeners();
  }

  void divide() {
    _result = (_operand2 != 0) ? _operand1 / _operand2 : double.infinity;
    notifyListeners();
  }

  void reset() {
    _result = 0;
    _operand1 = 0;
    _operand2 = 0;
    notifyListeners();
  }
}
