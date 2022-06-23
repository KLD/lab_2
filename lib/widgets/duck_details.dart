import 'package:flutter/material.dart';
import 'package:lab_2/models/models.dart';
import 'package:lab_2/widgets/comment_list.dart';
import 'package:lab_2/widgets/user_profile.dart';

class DuckDetails extends StatelessWidget {
  final DuckModel duck;
  const DuckDetails({required this.duck});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duck Post"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UserProfile(user: duck.user),
            Image.asset(
              duck.image,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${duck.likesCount} likes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(duck.caption),
                  SizedBox(height: 12),
                  Text(
                    duck.dateString,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Comments",
                    style: TextStyle(fontSize: 20),
                  ),
                  duck.comments.isEmpty
                      ? Text("No comments")
                      : CommentList(comments: duck.comments),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
