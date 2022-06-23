import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_2/models/models.dart';

class UserProfile extends StatelessWidget {
  final UserModel user;

  UserProfile({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.imageUrl),
                radius: 16,
              ),
            ),
          ),
          SizedBox(width: 12),
          Text(user.name),
        ],
      ),
    );
  }
}
