import 'package:flutter/material.dart';
import 'package:lab_2/models/models.dart';
import 'package:lab_2/widgets/user_profile.dart';

class CommentWidget extends StatelessWidget {
  final CommentModel comment;

  const CommentWidget({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserProfile(user: comment.user),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.comment,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 6),
                Text(
                  comment.dateString,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
