import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.userHeight, this.userWeight});
  final int? userHeight;
  final int? userWeight;
  late double _BMI;
  String calculateBMI() {
    _BMI = userWeight! / pow(userHeight! / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_BMI > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
