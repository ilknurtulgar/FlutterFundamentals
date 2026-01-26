import 'package:flutter/material.dart';

import 'views/slider_exercise_view.dart';

void main() {
  runApp(const SlidersApp());
}

class SlidersApp extends StatefulWidget {
  const SlidersApp({super.key});

  @override
  State<SlidersApp> createState() => _SlidersAppState();
}

class _SlidersAppState extends State<SlidersApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderExerciseView(),
    );
  }
}
