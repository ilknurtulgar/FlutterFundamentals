import 'package:flutter/material.dart';

import 'switch_view.dart';

void main() {
  runApp(const SwitchApp());
}

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false ,home: SwitchView(),);
  }
}
