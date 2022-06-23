// ignore_for_file: unused_local_variable

// class with defaults in variable declaration
class HumanValueInDeclaration {
  String name = "";
  int age = 0;

  // Default constructor, no need to write
  HumanValueInDeclaration() {
    print("I was created");
  }
}

// void main() {
//   var human = new HumanValueInDeclaration();
// }

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
  }) {
    print("Animal was created, named $name with $legs legs");
  }

  Animal.thawatalfour(String name) : this(name: name, legs: 4);

  factory Animal.bird(String name) {
    return Animal(name: name, legs: 2);
  }
}

void main2() {
  var cow = Animal.thawatalfour("Cow");
  var duck = Animal(name: "Duck", legs: 2);
  var chicken = Animal(name: "Chicken", legs: 2);
  var sheep = Animal.thawatalfour("Sheep");
  var camel = Animal(name: "Camel", legs: 4);
  var snake = Animal(name: "Snake", legs: 0);
}

void main(List<String> args) {
  const String k = "K";
  // const i = A(k);
  // var j = const A("K");

  // print(i == j);
}
