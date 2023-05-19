import 'package:flutter/material.dart';

const labelTextstyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class Iconcontent extends StatelessWidget {
  Iconcontent({this.icon, this.label});

  final icon;
  final label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextstyle,
        ),
      ],
    );
  }
}
