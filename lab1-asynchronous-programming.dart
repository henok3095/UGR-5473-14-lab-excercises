//excercise1

import 'dart:async';
import 'dart:math';

// Simulating a network call to get a random quote
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate network delay
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt"
  ];
  Random random = Random();
  return quotes[random.nextInt(quotes.length)];
}

void main() async {
  // Using async and await to make the main program wait for the quote
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Random Quote: $quote");
}

//excercise 2

import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;

// Function to download a file from a URL asynchronously
Future<void> downloadFile(String url) async {
  print("Downloading file from $url...");
  try {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      File file = File('downloaded_file.txt');
      await file.writeAsBytes(response.bodyBytes);
      print("File downloaded successfully.");
    } else {
      print("Failed to download file: ${response.statusCode}");
    }
  } catch (e) {
    print("Error: $e");
  }
}

void main() async {
  // URL of the file to download
  String fileUrl = "https://example.com/file.txt";

  // Call the downloadFile function
  await downloadFile(fileUrl);
}

//excercise3

import 'dart:async';

// Function to simulate loading data from a database asynchronously
Future<List<String>> loadDataFromDatabase() async {
  print("Loading data from database...");
  await Future.delayed(Duration(seconds: 2)); // Simulate database delay
  List<String> data = ["Data 1", "Data 2", "Data 3"];
  return data;
}

void main() async {
  // Using async and await to make the main program wait for data loading
  List<String> loadedData = await loadDataFromDatabase();
  print("Loaded Data: $loadedData");
}


//excercise 4


import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to fetch weather data from an API asynchronously
Future<Map<String, dynamic>> fetchWeatherData(String apiKey, String city) async {
  String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
  
  try {
    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> weatherData = jsonDecode(response.body);
      return weatherData;
    } else {
      throw Exception('Failed to fetch weather data: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}

void main() async {
  String apiKey = 'YOUR_API_KEY'; // Replace with your actual API key
  String city = 'New York'; // Example city
  
  try {
    // Fetch weather data for the specified city
    Map<String, dynamic> weatherData = await fetchWeatherData(apiKey, city);
    
    // Extract and print current temperature and weather conditions
    double temperature = weatherData['main']['temp'];
    String weatherDescription = weatherData['weather'][0]['description'];
    
    print('Current Temperature in $city: ${temperature.toStringAsFixed(2)}°C');
    print('Weather Conditions: $weatherDescription');
  } catch (e) {
    print('Error: $e');
  }
}


