import 'dart:io';

void main() {
  SubjectModel math = SubjectModel(name: "Math");
  SubjectModel programming = SubjectModel(name: "Programming");
  SubjectModel flutter = SubjectModel(name: "Flutter");

  List<SubjectModel> student1Subjects = [math, programming, flutter];
  List<SubjectModel> student2Subjects = [math, programming, flutter];
  List<SubjectModel> student3Subjects = [math, programming, flutter];

  StudentModel student1 =
      StudentModel(id: 1, name: "Abdullah", subjects: student1Subjects);
  StudentModel student2 =
      StudentModel(id: 2, name: "Ali", subjects: student2Subjects);
  StudentModel student3 =
      StudentModel(id: 4, name: "Zain", subjects: student3Subjects);

  List<StudentModel> students = [student1, student2, student3];

  for (int i = 0; i < students.length; i++) {
    StudentModel student = students[i];

    print("------- Student Name ${student.name} ---------");

    for (int j = 0; j < student.subjects.length; j++) {
      SubjectModel subject = student.subjects[j];

      stdout.write("${subject.name}: ");
      String input = stdin.readLineSync() ?? "0";

      int number = int.tryParse(input) ?? 0;

      students[i].subjects[j].marks = number;
    }
  }

  stdout.write("\n\nProvide Student Name or ID: ");
  String query = stdin.readLineSync() ?? "";

  final results = students.where((student) =>
      student.name.toLowerCase().contains(query.toLowerCase()) ||
      student.id == int.tryParse(query));

  results.forEach((student) {
    print("------- Student ID ${student.id} ---------");
    print("------- Student Name ${student.name} ---------");

    student.subjects.forEach((subject) {
      print("${subject.name}: ${subject.marks}");
    });

    print("Total Marks: ${student.obtainedMarks}");
    print("Percentage: ${student.percentage.toStringAsFixed(2)}");
    print("Grade: ${student.grade}");
  });
}

class StudentModel {
  int id;
  String name;
  List<SubjectModel> subjects;

  StudentModel({required this.id, required this.name, required this.subjects});

  int get obtainedMarks {
    int total = 0;

    subjects.forEach((subject) {
      total += subject.marks;
    });

    return total;
  }

  double get percentage {
    int total = subjects.length * 100;

    return obtainedMarks / total * 100;
  }

  String get grade {
    if (percentage > 80) {
      return "A";
    } else if (percentage > 60) {
      return "B";
    } else if (percentage > 50) {
      return "C";
    } else if (percentage > 40) {
      return "D";
    } else {
      return "F";
    }
  }
}

class SubjectModel {
  String name;
  int marks;

  SubjectModel({required this.name, this.marks = 0});
}
