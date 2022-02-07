//@dart = 2.9;
import 'dart:io';

void main() {
  List<int> names = [6, 6, 6];
  var sum = 0;
  for (int i = 0; i < names.length; i++) {
    print("Enter marks: ");
    names[i] = int.parse(stdin.readLineSync());
     sum += names[i];
  }
  print(names);
}
