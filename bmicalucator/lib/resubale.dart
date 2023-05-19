import 'package:flutter/material.dart';

class Resuablecard extends StatelessWidget {
  Resuablecard({@required this.colour, this.cardchild});
  final colour;
  final cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
