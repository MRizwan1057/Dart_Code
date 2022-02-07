//@dart = 2.9

import 'dart:io';  
void main() 
{ 
   String name = stdin.readLineSync();
    int age = int.parse(stdin.readLineSync());
	//age= nextInt;
	int rem = 100 - age;
    print("$name You have $rem years to be 100"); 
	
} 