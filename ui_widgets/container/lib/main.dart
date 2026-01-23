import 'package:flutter/material.dart';

import 'views/exercise_view.dart';

void main() {
  runApp(const ContainerExercise());
}

class ContainerExercise extends StatefulWidget {
  const ContainerExercise({super.key});

  @override
  State<ContainerExercise> createState() => _ContainerExerciseState();
}

class _ContainerExerciseState extends State<ContainerExercise> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExerciseView(),);
  }
}