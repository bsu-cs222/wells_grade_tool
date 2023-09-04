class gradeCalculator {
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

bool _gradeIsBetween(int gradePercentage, int highGrade, int lowGrade){
  return gradePercentage > lowGrade && gradePercentage < highGrade;
}
