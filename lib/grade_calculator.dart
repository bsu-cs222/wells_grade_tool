class gradeCalculator {
  // This converts a grade percentage into a letter grade
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

