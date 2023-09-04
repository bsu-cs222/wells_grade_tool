// Destiny Wells - September 4 2023
import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/gradeCalculator.dart';

void main() {
  gradeCalculator calculator = gradeCalculator();

  String testResultFor(int inputGrade){
    return calculator.convertGrade(inputGrade);
  }

  test('Test grade for grade calculator', () {
    expect(testResultFor(100), "A");
    expect(testResultFor(0), "F");
    expect(testResultFor(75), "C");
    expect(testResultFor(65), "D");
  });
}

