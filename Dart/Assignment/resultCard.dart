//@dart = 2.9;
import 'dart:io';

void main() {
  List<String> names = ["Rizwan", "Usman", "Adnan"];
  List<int> id = [1, 2, 3];
  List<int> rizwan = [0, 0, 0];
  List<int> usman = [0, 0, 0];
  List<int> adnan = [0, 0, 0];
  var sum = 0;
  var input;
  var ave;

  print("Please Enter First Student Marks:");
  for (int i = 0; i < 3; i++) {
    input = int.parse(stdin.readLineSync()!);
    rizwan[i] = input;
    sum += rizwan[i];
  }

  ave = sum / 3;
  //print("Sum is : $sum  Average is : $ave");
  //grade(ave);
  //print(rizwan.contains(99));

  var usum = 0;
  var uave;

  print("Please Enter Second Student Marks:");
  for (int i = 0; i < 3; i++) {
    input = int.parse(stdin.readLineSync()!);
    usman[i] = input;
    usum += usman[i];
  }
  uave = usum / 3;
  //print("Sum is : $usum  Average is : $uave");
  //grade(uave);

  var asum = 0;
  var aave;

  print("Please Enter Third Student Marks:");
  for (int i = 0; i < 3; i++) {
    input = int.parse(stdin.readLineSync()!);
    adnan[i] = input;
    asum += adnan[i];
  }
  aave = asum / 3;
  // print("Sum is : $asum  Average is : $aave");
  //grade(aave);
  print("Enter your Id or Name:");
  dynamic result = stdin.readLineSync()!;
  if (result == "rizwan" || result == "1") {
    print("Name : Rizwan \t ID : 1 \n");
    print("Marks in Subjects : \n $rizwan");
    print("Obtained Marks : $sum");
    print("Avearage : $ave \n ");
    grade(ave);
  } else if (result == "usman" || result == "2") {
    print("Name : Usman \t ID : 2 \n");
    print("Marks Obtained : \n $usman");
    print("Total Marks : $usum");
    print("Avearage : $uave \n");
    grade(uave);
  } else if (result == "adnan" || result == "3") {
    print("Name : Adnan \t ID : 3 \n");
    print("Marks Obtained : \n $adnan");
    print("Total Marks : $asum");
    print("Avearage : $aave \n");
    grade(aave);
  } else
    print("Not Found.Please Enter Correct Name or Id");
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
