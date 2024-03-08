
//excercise1
void main() {
  String name = "Henok";
  int age = 21;
  String favoriteColor = "blue";

  print("My name is $name.");
  print("I am $age years old.");
  print("My favorite color is $favoriteColor.");
}


//excercise 2
void main() {

  const int speedOfLight = 299792458; 
  print("Enter the distance in meters:");
  int distance = int.parse(stdin.readLineSync()!);
  double timeInSeconds = distance / speedOfLight;
  print("Time taken for light to travel $distance meters: $timeInSeconds seconds");
}
