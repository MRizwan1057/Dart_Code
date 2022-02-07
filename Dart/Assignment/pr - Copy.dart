//@dart=2.11;

class Student {
  int? id;
  String? name;
  List<Subject> subName? = [subjects];
 
  Student({this.id, this.name,this.subjects})
}

class Subject {
  String? name;
  int? marks;
  
  Subject({this.name,this.marks})
}

void main(){
  
  Subject subEng = (name:"English");
  Subject subUr = (name:"Urdu");
  Subject subMath = (name:"Maths");
  
  Student students = (name:"Rizwan", id:1, subjects);
    
  List<Student> studentsList=[
    Student(students);
    //Student(students);
   // Student(students);
  ]
}
