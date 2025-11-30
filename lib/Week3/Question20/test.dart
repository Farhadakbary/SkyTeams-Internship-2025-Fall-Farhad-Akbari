import 'package:test/test.dart';
import 'BMI.dart';

void main() {
  test('This will say your BMI of weight 74, and height of 1.83',(){
    expect(calculateBMI(74, 1.83), equals('BMI = 22.1 (Normal weight)'));
  });
  test('This will say your BMI of weight 100, and height of 1.70', (){
    expect(calculateBMI(100, 1.70), equals('BMI = 34.6 (Obese)'));
    print(calculateBMI(100, 1.70));
  });
  test('This will say your BMI of weight 10, and height of 1.70', (){
    expect(calculateBMI(10, 1.70), equals('BMI = 3.46 (Underweight)'));
    print(calculateBMI(10, 1.70));
  });
  test('This will say your BMI of weight 90, and height of 2.70', (){
    expect(calculateBMI(90, 2.70), equals('BMI = 12.35 (Underweight)'));
    print(calculateBMI(90, 2.70));
  });
  test('This will say your BMI of weight 90, and height of 2.70', (){
    expect(calculateBMI(90, 1.80), equals('BMI = 27.78 (Overweight)'));
    print(calculateBMI(90, 1.80));
  });

}
