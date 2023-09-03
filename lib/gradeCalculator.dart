class gradeCalculator {
  String convertGrade(int gradePercentage) {
    if (gradePercentage > 89 && gradePercentage < 101) {
      return "A";
    } else if (gradePercentage > 79 && gradePercentage < 90) {
      return "B";
    }else if (gradePercentage == 0) {
      return "F";
    } else {
      return "Not valid grade";
    }
  }
}
