class Student {
  String name;
  String enrollmentId;
  String course;

  Student(this.name, this.enrollmentId, this.course);

  String toString() {
    return 'Name: $name, Enrollment ID: $enrollmentId, Course: $course';
  }
}

class EnrollmentSystem {
  List<Student> students = [];

  void enrollStudent(String name, String enrollmentId, String course) {
    students.add(Student(name, enrollmentId, course));
  }

  void displayEnrollment() {
    if (students.isEmpty) {
      print("No students enrolled in the system.");
    } else {
      print("Enrollment Records:");
      students.forEach((student) => print(student));
    }
  }
}

void main() {
  EnrollmentSystem enrollmentSystem = EnrollmentSystem();

 
  enrollmentSystem.enrollStudent(
      "fahad", "20201552", "genral Science");
  enrollmentSystem.enrollStudent("Ahmed", "20220059", "Maths");
  enrollmentSystem.enrollStudent("Saad Ayaz", "20220087", "chemistry");


  enrollmentSystem.displayEnrollment();
}