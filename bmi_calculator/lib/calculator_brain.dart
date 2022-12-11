import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 1.0;

  String CalculateBMI() {
    //  BMI is weight/ height squared, but the height taken is in cm
    //so devide by  100 to get meters

    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
    //converts and allow you to set number of dp.
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You eat too much, you should consider exercising';
    } else if (_bmi > 18) {
      return 'Great job, you have a normal weight, keep it up';
    } else {
      return 'You should consider eating more, your are underweight for your age';
    }
  }
}
