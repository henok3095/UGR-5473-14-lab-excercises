//excercise1

void main() {
  // Create a list of favorite hobbies
  List<String> hobbies = ['Reading', 'Hiking', 'Cooking', 'Painting'];

  // Add a new hobby
  hobbies.add('Traveling');
  print('Added a new hobby: $hobbies');

  // Remove a hobby
  hobbies.remove('Cooking');
  print('Removed a hobby: $hobbies');

  // Sort hobbies
  hobbies.sort();
  print('Sorted hobbies: $hobbies');

  // Check if the list is empty
  bool isEmpty = hobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}


//excercise2

import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = List.generate(10, (_) => Random().nextInt(10));
  print('Random numbers: $randomNumbers');

  // Use a Set to remove duplicate elements
  Set<int> uniqueNumbers = randomNumbers.toSet();
  print('Unique numbers: $uniqueNumbers');
}


//excercise3

void main() {
  // Create a Map to store student names and their marks
  Map<String, int> studentMarks = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'David': 90,
  };

  // Add a new entry using putIfAbsent
  studentMarks.putIfAbsent('Eve', () => 88);
  print('Added a new entry: $studentMarks');

  // Iterate over the map using forEach
  print('Student Marks:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if the map contains a key
  bool containsKey = studentMarks.containsKey('Charlie');
  print('Does the map contain Charlie? $containsKey');
}

//excercise4


class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ShoppingCart {
  Map<Product, int> items = {};

  void addItem(Product product, int quantity) {
    items.putIfAbsent(product, () => 0);
    items[product] += quantity;
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    items.forEach((product, quantity) {
      totalPrice += product.price * quantity;
    });
    return totalPrice;
  }

  void removeItem(Product product, int quantity) {
    if (items.containsKey(product)) {
      items[product] -= quantity;
      if (items[product] <= 0) {
        items.remove(product);
      }
    }
  }
}

void main() {
  // Create products
  Product product1 = Product('Laptop', 999.99);
  Product product2 = Product('Headphones', 49.99);

  // Create shopping cart
  ShoppingCart cart = ShoppingCart();

  // Add items to the cart
  cart.addItem(product1, 2);
  cart.addItem(product2, 1);

  // Calculate total price
  print('Total Price: \$${cart.calculateTotalPrice()}');

  // Remove items from the cart
  cart.removeItem(product1, 1);
  print('Total Price after removing one laptop: \$${cart.calculateTotalPrice()}');
}

