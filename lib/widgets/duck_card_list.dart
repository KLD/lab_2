import 'package:flutter/material.dart';
import 'package:lab_2/models/models.dart';
import 'package:lab_2/widgets/duck_card.dart';

class DuckCardList extends StatelessWidget {
  final List<DuckModel> ducks;

  const DuckCardList({required this.ducks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ducks.length,
        itemBuilder: (_, i) => DuckCard(duck: ducks[i]));
  }
}
