import 'package:flutter/material.dart';
import 'package:stepper/stepper_view.dart';

void main() {
  runApp(const StepperApp());
}

class StepperApp extends StatefulWidget {
  const StepperApp({super.key});

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: StepperView(),);
  }
}
