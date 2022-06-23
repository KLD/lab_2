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

void main() {}
