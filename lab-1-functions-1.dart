//excercie1
void main() {
  // Call the function with two numbers and print the result
  print("The sum is: ${addNumbers(5, 7)}");
}

// Function to add two numbers
int addNumbers(int a, int b) {
  return a + b;
}


//excercise2

void main() {
  // Define the range to check for prime numbers
  int start = 2;
  int end = 20;

  // Check for prime numbers within the range
  print("Prime numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

// Function to check if a number is prime
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}


//excercise3 


void main() {
  // Test the reverseString function
  String originalString = "hello";
  print("Original string: $originalString");
  
  String reversedString = reverseString(originalString);
  print("Reversed string: $reversedString");
}

// Function to reverse a string
String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}
