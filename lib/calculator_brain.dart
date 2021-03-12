import 'dart:math';
import 'components/gender.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age, this.gender});

  final int height;
  final int weight;
  final int age;
  final Gender gender;
  double _bmi;
  double _fifth;
  double _eightieth;

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (gender == Gender.MALE) {
      if (age < 20) {
        _fifth = 18.5;
        _eightieth = 25;
      } else if (age >= 20 && age < 30) {
        _fifth = 19.3;
        _eightieth = 33.1;
      } else if (age >= 30 && age < 40) {
        _fifth = 21.1;
        _eightieth = 35.1;
      } else if (age >= 40 && age < 50) {
        _fifth = 21.9;
        _eightieth = 34.4;
      } else if (age >= 50 && age < 60) {
        _fifth = 21.6;
        _eightieth = 34.0;
      } else if (age >= 60 && age < 70) {
        _fifth = 21.6;
        _eightieth = 35.3;
      } else if (age >= 70 && age < 80) {
        _fifth = 21.5;
        _eightieth = 33.1;
      } else {
        _fifth = 20.0;
        _eightieth = 31.1;
      }
    }
    if (gender == Gender.FEMALE) {
      if (age < 20) {
        _fifth = 18.5;
        _eightieth = 25;
      } else if (age >= 20 && age < 30) {
        _fifth = 18.6;
        _eightieth = 36.0;
      } else if (age >= 30 && age < 40) {
        _fifth = 19.8;
        _eightieth = 36.6;
      } else if (age >= 40 && age < 50) {
        _fifth = 20.0;
        _eightieth = 37.0;
      } else if (age >= 50 && age < 60) {
        _fifth = 19.9;
        _eightieth = 38.3;
      } else if (age >= 60 && age < 70) {
        _fifth = 20.0;
        _eightieth = 36.1;
      } else if (age >= 70 && age < 80) {
        _fifth = 20.5;
        _eightieth = 36.5;
      } else {
        _fifth = 19.3;
        _eightieth = 30.9;
      }
    }

    return getResultText();
  }

  String getResultText() {
    if (_bmi >= _eightieth) {
      return 'Overweight';
    } else if (_bmi > _fifth) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= _eightieth) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > _fifth) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
