/* Farhad Akbari
Week 2
11/18/2025
20. Body Mass Index (BMI) Calculator
Description: Given weight (kg) and height (m), calculate BMI using:
BMI = weight / (height * height)
Then categorize it into:
• Underweight: BMI < 18.5
• Normal weight: 18.5 ≤ BMI < 25
• Overweight: 25 ≤ BMI < 30
• Obese: BMI ≥ 30
Example:
Input:
70, 1.75
Output:
BMI = 22.86 (Normal weight)
 */
enum BmiCategory { Underweight, NormalWeight, Overweight, Obese }

// a methode to change double to int
int changingToInt(double value) {
  int count = 0;
  while (value >= 1) {
    value -= 1;
    count++;
  }
  if (value > 0.49999) count++;
  return count;
}


String calculateBMI(double weight, double height) {
  if (weight <= 0 || height <= 0) {
    throw ArgumentError("Weight and height must be positive.");
  }else if(height >= 3.00){
    throw ArgumentError('You must be kidding');
  }else if(weight >= 200){
    throw ArgumentError('You must be kidding');
  }

  double bmi = weight / (height * height);

  double measure = bmi * 100 + 0.5;

  int temp = changingToInt(measure);

  double roundedBmi = temp / 100;

  BmiCategory category;

  if (roundedBmi < 18.5) {
    category = BmiCategory.Underweight;
  } else if (roundedBmi < 25) {
    category = BmiCategory.NormalWeight;
  } else if (roundedBmi < 30) {
    category = BmiCategory.Overweight;
  } else {
    category = BmiCategory.Obese;
  }

  String categoryText = category == BmiCategory.Underweight
      ? "Underweight"
      : category == BmiCategory.NormalWeight
      ? "Normal weight"
      : category == BmiCategory.Overweight
      ? "Overweight"
      : "Obese";

  return "BMI = $roundedBmi ($categoryText)";
}
