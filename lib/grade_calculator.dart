class gradeCalculator {
  // This converts a grade percentage into a letter grade
  String convertGrade(int gradePercentage) {
    if (_gradeIsBetween(gradePercentage, 101, 89)) {
      return "A";
    } else if (_gradeIsBetween(gradePercentage, 90, 79)) {
      return "B";
    }else if (_gradeIsBetween(gradePercentage, 80, 69)) {
      return "C";
    } else if (_gradeIsBetween(gradePercentage, 70, 59)) {
      return "D";
    }else if (_gradeIsBetween(gradePercentage, 60, -1)) {
      return "F";
    } else {
      return "Not valid grade";
    }
  }
}

// This checks if the grade percentage is less than the high grade and more than the low grade
bool _gradeIsBetween(int gradePercentage, int highGrade, int lowGrade){
  return gradePercentage > lowGrade && gradePercentage < highGrade;
}
