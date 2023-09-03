class gradeCalculator {
  String convertGrade(int gradePercentage) {
    if (gradePercentage == 100) {
      return "A";
    } else {
      return "E";
    }
  }
}