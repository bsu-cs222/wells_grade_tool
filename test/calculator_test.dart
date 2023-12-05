import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/grade_calculator.dart';

void main() {
  gradeCalculator calculator = gradeCalculator();
  final testData = {
    100: 'A',
    0: 'F',
    85: 'B',
    75: 'C',
    65: 'D'
  };

  String testResultFor(int inputGrade){
    return calculator.convertGrade(inputGrade);
  }

  for (final data in testData.entries){
    int numericGrade = data.key;
    String expectedGrade = data.value;
    test('Test grade $numericGrade%', () {
      expect(testResultFor(numericGrade), expectedGrade);
    });
  }
}
