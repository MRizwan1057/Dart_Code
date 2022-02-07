//@dart = 2.9;

import 'dart:io';

void main() {
  SubjectsModel python = SubjectsModel(name: "Python");
  SubjectsModel dart = SubjectsModel(name: "Dart");
  SubjectsModel java = SubjectsModel(name: "Java");
  List<SubjectsModel> subjList = [python, dart, java];

  StudentsModel rizwan =
      StudentsModel(id: 1, name: "Rizwan", subjects: subjList);
  StudentsModel usman = StudentsModel(id: 2, name: "Usman", subjects: subjList);
  StudentsModel adnan = StudentsModel(id: 3, name: "Adnan", subjects: subjList);

  List<StudentsModel> students = [rizwan, usman, adnan];
  input;
  for (int i = 0; i < students.length; i++) {
    for (int n = 0; n < subjList.length; n++) {
      input = int.parse(stdin.readLineSync()!);

      subjList[n] = input;
    }
    print(input);
  }

  // students.where()
  // {};
}

class StudentsModel {
  String? name;
  int? id;
  List<SubjectsModel>? subjects;

  StudentsModel({this.name, this.id, this.subjects});
}

class SubjectsModel {
  String? name;
  int? marks;

  SubjectsModel({this.name, this.marks});
}
