// [Task 1] if it's favorite, prints : $name loves #food 😍
// [Task 2] if it's dislike, prints : $name wont eat #food 🤮
// [Taks 3] Add another person (pick from attendence)

void main() {
  eat("banana", name: "Khaled");
}

/// Improve 'eat' function by adding 'favorite', and 'dislike' food lists
void eat(String food, {required String name}) {
  print("$name ate $food");
}
