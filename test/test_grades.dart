import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/gradeCalculator.dart';

void main() {
  test('100 is an A', () {
    gradeCalculator calculator = gradeCalculator();
    String expectLetterGrade = calculator.convertGrade(100);
    expect(expectLetterGrade, "A");
  });
}

