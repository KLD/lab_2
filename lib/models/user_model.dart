part of './models.dart';

class UserModel {
  final String name;
  String get imageUrl => "https://robohash.org/$name";

  const UserModel({
    required this.name,
  });
}

const _user_1 = UserModel(name: "Maria Pickle");
const _user_2 = UserModel(name: "Adam Jam");
const _user_3 = UserModel(name: "John Banana");
const _user_4 = UserModel(name: "Zee Apple");
const _user_5 = UserModel(name: "Home Bakeman");
const _user_6 = UserModel(name: "Jess Honey");
const _user_7 = UserModel(name: "Charlie Carrot");

const users = [
  _user_1,
  _user_2,
  _user_3,
  _user_4,
  _user_5,
  _user_6,
  _user_7,
];
