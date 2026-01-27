import 'dart:async';

import 'package:flutter/material.dart';

class LinearProgressExercise extends StatefulWidget {
  const LinearProgressExercise({super.key});

  @override
  State<LinearProgressExercise> createState() => _LinearProgressExerciseState();
}

class _LinearProgressExerciseState extends State<LinearProgressExercise> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (count >= 10) {
                  count = 0;
                } else {
                  count++;
                }
              });
            },
            child: Text("Beni başlat!"),
          ),
          SizedBox(height: 15),
          LinearProgressIndicator(
            value: count / 10,
            color: Colors.black,
            backgroundColor: Colors.blue,
            minHeight: 10,
          ),
          SizedBox(height: 15),
          Text("$count", style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
