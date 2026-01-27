import 'package:flutter/material.dart';

class StackViewExercise extends StatefulWidget {
  const StackViewExercise({super.key});

  @override
  State<StackViewExercise> createState() => _StackViewExerciseState();
}

class _StackViewExerciseState extends State<StackViewExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Align(alignment: Alignment.topCenter ,child: Text("Expelliarmus")),
          Align(alignment: Alignment.centerLeft ,child: Text("Lumos")),
          Align(alignment: Alignment.center ,child: Text("Expecto Patronum")),
          Align(alignment: Alignment.bottomRight ,child: Text("Avada Kedavra")),
        ],),
      ),
    ),);
  }
}