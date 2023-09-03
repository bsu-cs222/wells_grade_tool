import 'package:flutter_test/flutter_test.dart';
import 'package:wells_gradetool/gradeCalculator.dart';

void main() {
  gradeCalculator calculator = gradeCalculator();
  test('100 is an A', () {
    String expectLetterGrade = calculator.convertGrade(100);
    expect(expectLetterGrade, "A");
  });
  test('0 is an F', () {
    String expectLetterGrade = calculator.convertGrade(0);
    expect(expectLetterGrade, "F");
  });
  test('85 is an B', () {
    String expectLetterGrade = calculator.convertGrade(85);
    expect(expectLetterGrade, "B");
  });
}

