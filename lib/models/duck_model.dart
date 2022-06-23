part of './models.dart';

class DuckModel {
  final String image;
  final UserModel user;
  final double rating;
  final String caption;
  final DateTime date;

  String get dateString => date.toString().split(":").first;

  final List<UserModel> likes;
  final List<CommentModel> comments;

  int get likesCount => likes.length;

  DuckModel({
    required this.user,
    required this.image,
    required this.rating,
    required this.likes,
    required this.caption,
    required this.comments,
    required this.date,
  });
}

final _duck_1 = DuckModel(
    user: _user_2,
    image: "images/duck_1.jpeg",
    rating: 8.0,
    caption: "Span your wings like a duck!",
    likes: [_user_1, _user_6, _user_2],
    comments: [
      CommentModel(
        comment: "WING SPANED!!!",
        user: _user_1,
        date: DateTime.now().subtract(Duration(minutes: 10)),
      ),
      CommentModel(
        comment: "Beatiful duck",
        user: _user_5,
        date: DateTime.now().subtract(Duration(minutes: 5)),
      ),
    ],
    date: DateTime.now().add(Duration(minutes: 12)));

final _duck_2 = DuckModel(
    user: _user_1,
    image: "images/duck_2.jpeg",
    rating: 9.0,
    caption: "Try not to stare at this majestic creature",
    likes: [_user_1, _user_2, _user_3, _user_4, _user_6],
    comments: [
      CommentModel(
        comment: "Simply beautiful 🦆",
        user: _user_2,
        date: DateTime.now().subtract(Duration(minutes: 15)),
      ),
      CommentModel(
        comment: "Whats the name of this duck?",
        user: _user_6,
        date: DateTime.now().subtract(Duration(minutes: 12)),
      ),
      CommentModel(
        comment: "Beatiful",
        user: _user_2,
        date: DateTime.now().subtract(Duration(minutes: 1)),
      ),
    ],
    date: DateTime.now().add(Duration(minutes: 20)));

final _duck_3 = DuckModel(
    user: _user_6,
    image: "images/duck_3.jpeg",
    rating: 10.0,
    caption: "😊",
    likes: [_user_1, _user_2, _user_3, _user_4, _user_5, _user_6, _user_7],
    comments: [
      CommentModel(
        comment: "OMG SO CUUTTTEEE ❤️❤️❤️❤️❤️",
        user: _user_2,
        date: DateTime.now().subtract(Duration(minutes: 30)),
      ),
      CommentModel(
        comment: "Awwwwww 🥺",
        user: _user_3,
        date: DateTime.now().subtract(Duration(minutes: 26)),
      ),
      CommentModel(
        comment: "cute",
        user: _user_4,
        date: DateTime.now().subtract(Duration(minutes: 22)),
      ),
      CommentModel(
        comment: "I want one NOW",
        user: _user_5,
        date: DateTime.now().subtract(Duration(minutes: 10)),
      ),
      CommentModel(
        comment: "nice picture",
        user: _user_7,
        date: DateTime.now().subtract(Duration(minutes: 3)),
      ),
    ],
    date: DateTime.now().add(Duration(minutes: 30)));

final _duck_4 = DuckModel(
    user: _user_3,
    image: "images/duck_4.jpeg",
    rating: 2.0,
    caption: "First Duck",
    likes: [_user_2],
    comments: [],
    date: DateTime.now().add(Duration(minutes: 40)));

List<DuckModel> ducks = [
  _duck_1,
  _duck_2,
  _duck_3,
  _duck_4,
];
