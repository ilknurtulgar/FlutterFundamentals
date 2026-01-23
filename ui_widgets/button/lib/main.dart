import 'package:flutter/material.dart';

import 'widgets/button_exercise_view.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatefulWidget {
  const ButtonApp({super.key});

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonExerciseView(),
    );
  }
}
