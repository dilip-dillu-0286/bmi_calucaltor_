import 'package:bmicalucator/inputpage.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          primaryColor: Color(0xF0A0E20),
          textTheme: TextTheme(bodyText2: TextStyle(color: Color(0XFFFFFFFF)))),
      home: inputpage(),
    );
  }
}
