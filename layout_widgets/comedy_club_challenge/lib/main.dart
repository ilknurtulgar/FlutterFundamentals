import 'package:flutter/material.dart';

import 'comedy_club_challenge.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:  false,
      home: ComedyClubChallenge(),
    );
  }
}
