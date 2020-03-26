import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight,this.height});

    final int height;
    final int weight;
    double _bmi;
      String calculateBMI(){
         _bmi = weight/pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
      }

      String getResult (){
        if(_bmi >= 25){
          return 'Overweight';
        }else if (_bmi >18.2){
          return ' Normal';
        }else {
          return'Underweight';
        }
      }

      String getInterpretation(){
        if(_bmi >= 25){
          return 'Exercise more, You have a higher than normal Body weight';
        }else if (_bmi >18.2){
          return ' Good Job .. You have a normal body weight ';
        }else {
          return'Eat More .';
        }
      }
}