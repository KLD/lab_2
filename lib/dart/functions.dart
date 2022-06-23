/// returns the string 'Hello World'
String helloWorld() {
  return "Hello World";
}

/// Return the sum of a & b
int add(int a, int b) {
  return a + b;
}

/// Returns true of tempreture is between 19 and 24, and it's not raining.
/// Otherwise, false
bool shouldTravel(int tempreture, bool isRaining) {
  if (isRaining) return false;

  if (tempreture > 24 || tempreture < 19) return false;

  return true;
}

/// Should return full name
/// etc: "Khaled Alhendi"
String fullName(String firstName, String lastName) {
  return "$firstName $lastName";
}

/// Returns sum of numbers
int sum(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  return numbers.reduce((value, element) => value + element);
}

/// Returns average of numbers
double average(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  return sum(numbers) / numbers.length;
}

/// Counts the occurrence of letters in given name
///
/// etc: countLetters("Hello World", 'l') => 3
int countLetters(String name, String letter) {
  return name.runes
      .where((element) => String.fromCharCode(element) == letter)
      .length;
}

/// Counts occurrence of name in given names
///
/// etc: `countLetters(["Khaled", "Ahmad", "Khaled"], "Khaled") => 2`
int countNames(List<String> names, String name) {
  return names.where((n) => n == name).length;
}

/// Returns a list of unique names
///
/// etc: `["Khaled", "Ahmad", "Khaled"] => ["Khaled", "Ahmad"]`
List<String> uniqueNames(List<String> names) {
  List<String> u = [];

  for (var n in names) {
    if (!u.contains(n)) {
      u.add(n);
    }
  }

  return u;
}

/// Returns a map of unique names and their count
///
/// etc: `["Khaled", "Ahmad", "Khaled"] => {"Khaled": 2, "Ahmad": "1"}`
Map<String, int> mapNames(List<String> names) {
  Map<String, int> u = {};

  for (var n in names) {
    if (u[n] == null) {
      u[n] = 1;
    } else {
      u[n] = u[n]! + 1;
    }
  }

  return u;
}
