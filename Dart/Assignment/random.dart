//@dart = 2.9

	import 'dart:io';
	import 'dart:math';

	void main() { 
		Random rand = new Random();
		int random = rand.nextInt(101); 
		//print("$random is my number:\n");
		
		 int input;
		 int attempts = 0;
   
   while(rand != input) { 
       print("Choose a number to win the game:n");
		
	   input = int.parse(stdin.readLineSync());
	   attempts ++;
	   
	   if(input == random){
			print("Congratulations! You won boy...");
			break;
	   }
	   else if(input > random)
			print("High, please enter lower value");
	   else
			print("Low, please enter higher value"); 
	 	   
   } 
	print("You attempted: $attempts");
  
} 