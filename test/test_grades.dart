import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/gradeCalculator.dart';

void main() {
  gradeCalculator calculator = gradeCalculator();

  String testResultFor(int inputGrade){
    return calculator.convertGrade(inputGrade);
  }

  test('100 is an A', () {
    expect(testResultFor(100), "A");
  });

  test('0 is an F', () {
     expect(testResultFor(0), "F");
  });
  test('85 is an B', () {
    expect(testResultFor(85), "B");
  });

  test('75 is an C', () {
    expect(testResultFor(75), "C");
  });
}

