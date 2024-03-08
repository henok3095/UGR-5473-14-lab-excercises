
//excercise1

void main() {
  int number = 7;
  
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}


//excercise2

void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}


//excercise3

import 'dart:io';

void main() {
  // Get input for operation and numbers
  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;
  
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

 
  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero!");
        return;
      }
      break;
    default:
      print("Error: Invalid operation!");
      return;
  }

  
  print("Result: $result");
}


//excercise4

import 'dart:io';

void main() {
  // Prompt the user to enter the grade
  print("Enter the grade:");
  int grade = int.parse(stdin.readLineSync()!);

  // Determine the letter grade using a switch statement
  String letterGrade;
  switch (grade ~/ 10) {
    case 10:
    case 9:
      letterGrade = 'A';
      break;
    case 8:
      letterGrade = 'B';
      break;
    case 7:
      letterGrade = 'C';
      break;
    case 6:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
  }

  // Display the corresponding letter grade
  print("Corresponding Letter Grade: $letterGrade");
}
