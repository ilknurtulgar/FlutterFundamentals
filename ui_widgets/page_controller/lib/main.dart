import 'package:flutter/material.dart';

import 'page_controller_view.dart';

void main() {
  runApp(const PageControllerApp());
}

class PageControllerApp extends StatefulWidget {
  const PageControllerApp({super.key});

  @override
  State<PageControllerApp> createState() => _PageControllerAppState();
}

class _PageControllerAppState extends State<PageControllerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageControllerView(),
    );
  }
}
