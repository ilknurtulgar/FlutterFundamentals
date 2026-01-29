import 'package:flutter/material.dart';
import 'package:gridview/views/gridview_exercise.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridviewExercise(),
    );
  }
}
