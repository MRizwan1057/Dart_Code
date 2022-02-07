import 'dart:math';

void main() {
  Random rand = new Random();
  print(rand.nextInt(11));
  for (int i = 0; i <= rand; i++) {
    print("The number is: " + i);
  }
}
