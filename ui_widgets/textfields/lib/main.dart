import 'package:flutter/material.dart';

import 'views/textfield_view.dart';

void main() {
  runApp(const TextFieldsApp());
}

class TextFieldsApp extends StatefulWidget {
  const TextFieldsApp({super.key});

  @override
  State<TextFieldsApp> createState() => _TextFieldsAppState();
}

class _TextFieldsAppState extends State<TextFieldsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextfieldView(),
    );
  }
}
