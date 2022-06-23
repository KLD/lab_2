// ignore_for_file: unused_local_variable

// class with defaults in variable declaration
class HumanValueInDeclaration {
  String name = "";
  int age = 0;

  // Default constructor, no need to write
  HumanValueInDeclaration() {
    print("Human object was created! ");
  }
}

///
///
///
///
///
///
///
///
///
class HumanDefaultsInConstructors {
  String name;
  int age;

  HumanDefaultsInConstructors()
      : name = "",
        age = 0;
}

///
///
///
///
///
///
///
///
///
///
///
class HumanWithNameParam {
  String name;
  int age;

  HumanWithNameParam(String name, int age)
      : name = name,
        age = age;
}

///
///
///
///
///
///
///
///
class HumanWithThis {
  String name;
  int age;

  HumanWithThis(this.name, this.age);
}

// Named constructors
class Animal {
  String name;
  int legs;
  Animal({
    required this.name,
    required this.legs,
  });
}

void main() {
  var cow = Animal(name: "Cow", legs: 4);
  var duck = Animal(name: "Duck", legs: 2);
  var chicken = Animal(name: "Chicken", legs: 2);
  var sheep = Animal(name: "Sheep", legs: 4);
  var camel = Animal(name: "Camel", legs: 4);
  var snake = Animal(name: "Snake", legs: 0);
}
