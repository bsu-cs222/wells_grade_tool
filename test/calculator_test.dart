import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/grade_calculator.dart';

void main() {
  gradeCalculator calculator = gradeCalculator();
  String testResultFor(int inputGrade){
    return calculator.convertGrade(inputGrade);
  }
  test('Test grade for grade calculator', () {
    expect(testResultFor(100), 'A');
    expect(testResultFor(0), 'F');
    expect(testResultFor(85), 'B');
    expect(testResultFor(75), 'C');
    expect(testResultFor(65), 'D');
  });
}
