//@dart = 2.9;
import 'dart:io';

void main() {
  SubjectsModel dart = SubjectsModel(name: "Dart");
  SubjectsModel python = SubjectsModel(name: "Python");
  SubjectsModel java = SubjectsModel(name: "java");
  List<SubjectsModel> subjectlst = [dart, python, java];

  StudentsModel anas = StudentsModel(id: 1, name: "Anas", subjects: subjectlst);
  StudentsModel rizwan =
      StudentsModel(id: 2, name: "Rizwan", subjects: subjectlst);
  StudentsModel usman =
      StudentsModel(id: 3, name: "Usman", subjects: subjectlst);

  List<StudentsModel> students = [anas, rizwan, usman];

  dynamic sum = 0;
  dynamic ave = 0;

  for (int i = 0; i < students.length; i++) {
    print("Enter ${students[i].name}'s marks:");

    for (int n = 0; n < subjectlst.length; n++) {
      var input = int.parse(stdin.readLineSync()!);
      sum += input;
      // subjectlst[n] = input;
    }
    print("");

    print("sum : $sum");
    ave = sum / subjectlst.length;
    print("Average : $ave");
    grade(ave);
    sum = 0;
  }

  print("Enter your ID or Name to search your Result:");
  int query = int.parse(stdin.readLineSync()!);
  final results = students.where((StudentsModel) {
    return StudentsModel.name == query || StudentsModel.id == query;
  });
}

class StudentsModel {
  String? name;
  int? id;
  List<SubjectsModel>? subjects;

  StudentsModel({this.name, this.id, this.subjects});

  String? get getName => name;

  int? get getId => id;

  dynamic get getSubjects => subjects;
}

class SubjectsModel {
  String? name;
  int? marks;

  SubjectsModel({this.name, this.marks});

  String? get getName => name;

  int? get getMarks => marks;

  // average(value) {
  //   ave = value / subjects.length;
  //   print(ave);
  // }
}

grade(value) {
  if (value > 80)
    print("Grade : A");
  else if (value > 60)
    print("Grade : B");
  else if (value > 40)
    print("Grade : C");
  else
    print("Failed");
  return " ";
}
