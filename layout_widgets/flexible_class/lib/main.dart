import 'package:flutter/material.dart';

import 'flexible_view_exercise.dart';

void main() {
  runApp(const FinSmart());
}

class FinSmart extends StatelessWidget {
  const FinSmart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: FlexibleViewExercise(),
    );
  }
}
