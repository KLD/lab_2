import 'package:flutter/material.dart';
import 'package:lab_2/models/models.dart';
import 'package:lab_2/widgets/comment_widget.dart';

class CommentList extends StatelessWidget {
  final List<CommentModel> comments;

  const CommentList({required this.comments});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: comments.map((e) => CommentWidget(comment: e)).toList(),
    );
  }
}
