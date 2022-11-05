import 'dart:math';

class Calculate {
  final int height;
  final int weight;

  Calculate(this.height, this.weight);
  late double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have higher than normal body weight. Try to excercise moer.";
    } else if (_bmi > 18.5) {
      return "You have normal body weight, Good Job!!!";
    } else {
      return "You have a lower than normal body weight. You can eat bit more.";
    }
  }
}
