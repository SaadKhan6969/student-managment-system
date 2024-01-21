class Student {
  String name;
  int totalClass;
  int attendedClass;

  Student(this.name, this.totalClass, this.attendedClass);

  double calcAttendancePercentage() {
    return (attendedClass / totalClass) * 100;
  }

  @override
  String toString() {
    return 'Name: $name, Attended Classes: $attendedCla, Total Classes: $totalClass, Attendance Percentage: ${calcAttendancePercentage().toStringAsFixed(2)}%';
  }
}

class Attendance {
  List<Student> students = [];

  void markAttendance(String name, int totalClass, int attendedClass) {
    students.add(Student(name, totalClass, attendedClass));
  }

  void displayAttendance() {
    if (students.isEmpty) {
      print("No students in the system.");
    } else {
      print("Attendance Records:");
      students.forEach((student) => print(student));
    }
  }
}

void main() {
  Attendance attendanceSystem = Attendance();

  attendanceSystem.markAttendance("saad", 20, 17);
  attendanceSystem.markAttendance("zain", 20, 8);
  attendanceSystem.markAttendance("ali", 20, 20);

 
  attendanceSystem.displayAttendance();
}