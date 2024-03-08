//excercise-1
// Define the Person class
class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);
  
  // Method to print person details
  void printDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

void main() {
  // Create objects of the Person class and access/modify their attributes
  Person person1 = Person('John', 30, '123 Main St');
  print('Before modification:');
  person1.printDetails();
  
  // Modify attributes
  person1.age = 35;
  person1.address = '456 Elm St';
  
  print('\nAfter modification:');
  person1.printDetails();
}


//excercise2

// Define the Person class
class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to print person details
  void printDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

// Define the Student class inheriting from Person
class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }

  // Method to print student details
  @override
  void printDetails() {
    super.printDetails();
    print('Roll Number: $rollNumber');
    print('Marks: $marks');
  }
}

void main() {
  // Create student objects and use methods to calculate total marks or average
  List<int> marks1 = [85, 90, 78, 92, 88];
  Student student1 = Student('Alice', 20, '456 Elm St', 101, marks1);

  print('Student 1 Details:');
  student1.printDetails();
  print('Total Marks: ${student1.calculateTotalMarks()}');
  print('Average Marks: ${student1.calculateAverageMarks()}');
}



//excercise3

class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate area
  double calculateArea() {
    return width * height;
  }

  // Method to calculate perimeter
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a rectangle object
  Rectangle rectangle = Rectangle(5, 10);

  // Calculate and print area
  double area = rectangle.calculateArea();
  print('Area of the rectangle: $area');

  // Calculate and print perimeter
  double perimeter = rectangle.calculatePerimeter();
  print('Perimeter of the rectangle: $perimeter');
}


//excercise4

class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate total cost
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  Product product = Product('Smartphone', 500, 2);

  // Calculate and print total cost
  double totalCost = product.calculateTotalCost();
  print('Total cost of ${product.name}: \$${totalCost}');
}


//excercise 5

// Define the Shape abstract class
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();
}

// Define the Circle subclass inheriting from Shape
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Implementation of calculateArea for Circle
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Define the Square subclass inheriting from Shape
class Square extends Shape {
  double side;

  // Constructor
  Square(this.side);

  // Implementation of calculateArea for Square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create objects of Circle and Square classes
  Circle circle = Circle(5);
  Square square = Square(4);

  // Calculate and print areas
  print('Area of Circle: ${circle.calculateArea()}');
  print('Area of Square: ${square.calculateArea()}');
}
