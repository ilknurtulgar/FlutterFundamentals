import 'package:container/widgets/container_with_design.dart';
import 'package:container/widgets/container_with_layout.dart';
import 'package:container/widgets/container_with_nested.dart';
import 'package:container/widgets/container_with_size.dart';
import 'package:flutter/material.dart';

import '../widgets/container_with_alignment.dart';

class ExerciseView extends StatefulWidget {
  const ExerciseView({super.key});

  @override
  State<ExerciseView> createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ContainerWithSize(height: 50, width: 100),
            ContainerWithAlignment(height: 50, width: 100, alignment: Alignment.center,),
            ContainerWithDesign(width: 50, height: 100,backgroundColor: Colors.grey,),
            ContainerWithLayout(width: 50, height: 100),
            ContainerWithNested(width: 50, height: 100, firsColor: Colors.pink, secondColor: Colors.yellow, thirdColor: Colors.red)
            ]),
        ),
      ),
    );
  }
}
