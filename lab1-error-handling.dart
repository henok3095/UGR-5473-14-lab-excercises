//excercise1

import 'dart:io';

void main() {
  try {
    // Prompt user for input
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;
    
    // Convert input to integer
    int number = int.parse(userInput);
    
    print("Input number: $number");
  } catch (e) {
    print("Error: Invalid input. Please enter a valid number.");
  }
}


//excercise2

// Function to divide two numbers
double divideNumbers(double a, double b) {
  // Use try/catch to handle potential DivisionByZeroError
  try {
    if (b == 0) {
      throw DivisionByZeroError();
    }
    return a / b;
  } catch (e) {
    print("Error: Division by zero is not allowed.");
    return double.nan;
  }
}

void main() {
  // Test the divideNumbers function
  double result = divideNumbers(10, 0);
  print("Result of division: $result");
}


//excercise3

import 'dart:io';

void readFile(String filePath) {
  try {
    // Read file from disk
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    
    // Print file contents
    print("File Contents:");
    for (String line in lines) {
      print(line);
    }
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}

void main() {
  // Specify the path to the file
  String filePath = "example.txt"; // Replace with the actual file path
  
  // Read and print the contents of the file
  readFile(filePath);
}
