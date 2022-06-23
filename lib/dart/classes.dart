import 'dart:convert';

import 'constructor.dart';

// [Task 1] if it's favorite, prints : $name loves #food 😍
// [Task 2] if it's dislike, prints : $name wont eat #food 🤮
// [Taks 3] Add an

class Eater {
  String name;
  List<String> fav;
  List<String> dislike;

  late int age;

  Eater({
    required this.name,
    required this.fav,
    required this.dislike,
  }) {
    age = 0;
  }

  void eat(String food) {
    if (fav.contains(food)) {
      print("$name loves $food 😍");
    } else if (dislike.contains(food)) {
      print("$name wont eat $food 🤮");
    } else {
      print("$name ate $food");
    }
  }
}

void main2() {
  Eater khaled =
      Eater(name: "Khaled", fav: ["banana", "pizza"], dislike: ["eggplant"]);

  khaled.eat("burger");

  // String khaledName = "Khaled";
  // List<String> khaledsFavorite = ["banana", "pizza"];
  // List<String> khaledsDislike = ["eggplant"];

  String azizName = "Aziz";
  List<String> azizFavorite = ["cheeesecake", "jelly"];
  List<String> kDislike = ["tomato"];

  // eat("eggplant", name: khaled.name, fav: khaled.fav, dislike: khaled.dislike);
}

/// Improve 'eat' function by adding 'favorite', and 'dislike' food lists
void eat(
  String food, {
  required String name,
  required List<String> fav,
  required List<String> dislike,
}) {
  if (fav.contains(food)) {
    print("$name loves $food 😍");
  } else if (dislike.contains(food)) {
    print("$name wont eat $food 🤮");
  } else {
    print("$name ate $food");
  }
}

void x(int i, {required String name}) {}

void y(int i, [int j = 0]) {}

void main() async {
  print("start");

  waitFor().then((value) => print(value));

  print("end");
}

Future<String> waitFor() async {
  await Future.delayed(Duration(seconds: 5));
  return "Thanks for waiting";
}
