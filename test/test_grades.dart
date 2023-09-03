import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/gradeCalculator.dart';

void main() {
  test('100 is an A', () {
    gradeCalculator calculator = gradeCalculator();
    String expectLetterGrade = calculator.convertGrade(100);
    expect(expectLetterGrade, "A");
  });
  test('0 is an F', () {
    gradeCalculator calculator = gradeCalculator();
    String expectLetterGrade = calculator.convertGrade(0);
    expect(expectLetterGrade, "F");
  });
  test('85 is an B', () {
    gradeCalculator calculator = gradeCalculator();
    String expectLetterGrade = calculator.convertGrade(85);
    expect(expectLetterGrade, "B");
  });
}

