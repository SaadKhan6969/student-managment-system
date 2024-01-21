
class Student {
  String name;
  double marks;

  Student(this.name, this.marks);

  String calculateGrade() {
    if (marks >= 90.0) {
      return 'A';
    } else if (marks >= 80.0) {
      return 'B';
    } else if (marks >= 70.0) {
      return 'C';
    } else if (marks >= 60.0) {
      return 'D';
    } else {
      return 'F';
    }
  }

  String toString() {
    String grade = calculateGrade();
    return 'Name: $name, Marks: $marks, Grade: $grade';
  }
}

class GradingSystem {
  List<Student> students = [];

  void addStudent(String name, double marks) {
    students.add(Student(name, marks));
  }

  void displayGrades() {
    if (students.isEmpty) {
      print("No students in the system.");
    } else {
      print("Grades:");
      students.forEach((student) => print(student));
    }
  }
}

void main() {
  GradingSystem grading = GradingSystem();


  grading.addStudent("Hamdan", 92.5);
  grading.addStudent("Ali", 78.0);
  grading.addStudent("Bob", 60.5);


  gradingSystem.displayGrades();
}