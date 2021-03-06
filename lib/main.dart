import 'package:flutter/material.dart';
import 'package:lab_2/widgets/duck_card_list.dart';
import 'package:lab_2/widgets/user_profile.dart';

import 'models/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rate My Duck"),
        ),
        body: Column(
          children: [
            Expanded(child: DuckCardList(ducks: ducks)),
          ],
        ),
      ),
    );
  }
}
