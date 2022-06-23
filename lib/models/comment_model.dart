part of './models.dart';

class CommentModel {
  final String comment;
  final UserModel user;
  final DateTime date;

  String get dateString => date.toString().split(":").first;

  CommentModel({
    required this.comment,
    required this.user,
    required this.date,
  });
}

final comment_1 = CommentModel(
  comment: "I like my coffee like I like my life. bitter.",
  user: _user_1,
  date: DateTime.now().subtract(Duration(minutes: 1)),
);

final comment_2 = CommentModel(
  comment: "Back in my days, we didn't have the internet",
  user: _user_2,
  date: DateTime.now().subtract(Duration(minutes: 5)),
);
final comment_3 = CommentModel(
  comment:
      "When life gives you lemnons, you make lemon grass tea with pepper mint.",
  user: _user_7,
  date: DateTime.now().subtract(Duration(minutes: 30)),
);

final comments = [
  comment_1,
  comment_2,
  comment_3,
];
