import 'package:flutter/material.dart';
import 'package:lab_2/models/models.dart';
import 'package:lab_2/widgets/user_profile.dart';

import 'duck_details.dart';

class DuckCard extends StatelessWidget {
  final DuckModel duck;

  const DuckCard({required this.duck});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => DuckDetails(duck: duck))),
      child: Card(
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
                mainAxisSize: MainAxisSize.min,
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
                  SizedBox(height: 6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
