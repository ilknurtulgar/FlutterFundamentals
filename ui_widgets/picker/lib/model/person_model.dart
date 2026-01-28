import 'package:flutter/material.dart';

class Person {
  String name;
  int age;
  String? imagePath;
  TextStyle textstyle;
  Color backgroundColor;

  Person({
    required this.name,
    required this.age,
    this.imagePath,
    this.backgroundColor = Colors.deepPurple,
    this.textstyle = const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontFamily: 'Roboto',
    ),
  });
}
