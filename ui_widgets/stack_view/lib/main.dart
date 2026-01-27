import 'package:flutter/material.dart';
import 'package:stack_view/stack_view_exercise.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackViewExercise(),
    );
  }
}
