import 'package:flutter/material.dart';

import 'segmented_controller_view.dart';

void main() {
  runApp(const SegmentedControllerApp());
}

class SegmentedControllerApp extends StatefulWidget {
  const SegmentedControllerApp({super.key});

  @override
  State<SegmentedControllerApp> createState() => _SegmentedControllerAppState();
}

class _SegmentedControllerAppState extends State<SegmentedControllerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SegmentedControllerView(),);
  }
}