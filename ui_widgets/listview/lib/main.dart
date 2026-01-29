import 'package:flutter/material.dart';

import 'listview_builder_exercise.dart';
import 'listview_exercise.dart';
import 'sliver_list_exercise.dart';
import 'slivergrid_list_exercise.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlivergridListExercise(),
    );
  }
}
