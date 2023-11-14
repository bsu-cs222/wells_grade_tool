class gradeCalculator {
  String convertGrade(int gradePercentage) {
    if (gradePercentage >= 90) {
      return "A";
    } else if (gradePercentage >= 80) {
      return "B";
    }else if (gradePercentage >= 70) {
      return "C";
    } else if (gradePercentage >= 60) {
      return "D";
    }else {
      return "F";
    }
  }
}

