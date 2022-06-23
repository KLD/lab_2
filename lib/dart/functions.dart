import 'package:lab_2/dart/constructor.dart';

/// returns the string 'Hello World'
String helloWorld() {
  return "Hello World";
}

/// Return the sum of a & b
int add(int a, int b) {
  throw UnimplementedError();
}

/// Returns true of tempreture is between 19 and 24, and it's not raining.
/// Otherwise, false
bool shouldTravel(int tempreture, bool isRaining) {
  throw UnimplementedError();
}

/// Should return full name
/// etc: "Khaled Alhendi"
String fullName(String firstName, String lastName) {
  throw UnimplementedError();
}

/// Returns sum of numbers
int sum(List<int> numbers) {
  throw UnimplementedError();
}

/// Returns average of numbers
double average(List<int> numbers) {
  throw UnimplementedError();
}

/// Counts the occurrence of letters in given name
///
/// etc: countLetters("Hello World", 'l') => 3
int countLetters(String name, String letter) {
  int count = 0;
  for (int i = 0; i < name.length; i++) {
    if (letter == name[i]) {
      count++;
    }
  }
  return count;
  //throw UnimplementedError();
}

/// Counts occurrence of name in given names
///
/// etc: `countLetters(["Khaled", "Ahmad", "Khaled"], "Khaled") => 2`
int countNames(List<String> names, String name) {
  int count = 0;

  // loop through names
  for (int i = 0; i < names.length; i++) {
    //  if current name == target name
    if (names[i] == name) {
      count++;
    }
  }
  return count;
}

/// Returns a list of unique names
///
/// etc: `["Khaled", "Ahmad", "Khaled"] => ["Khaled", "Ahmad"]`
List<String> uniqueNames(List<String> names) {
  throw UnimplementedError();
}

/// Returns a map of unique names and their count
///
/// etc: `["Khaled", "Ahmad", "Khaled"] => {"Khaled": 2, "Ahmad": 1}`
Map<String, int> mapNames(List<String> names) {
  throw UnimplementedError();
}

void x() {}
