class gradeCalculator {
  String convertGrade(int gradePercentage) {
    if (gradePercentage == 100) {
      return "A";
    } else if (gradePercentage == 0) {
      return "F";
    }else {
      return "Not valid grade";
    }
  }
}
