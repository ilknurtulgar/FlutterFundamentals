import 'package:flutter/material.dart';

import 'utils/color_util.dart';
import 'utils/text_util.dart';
import 'view/journey_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TextUtil.appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtil.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorUtil.appbarBackgroundColor,
          foregroundColor: ColorUtil.appbarForegroundColor,
          elevation: 0,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorUtil.appbarBackgroundColor,
        ),
      ),
      home: const JourneyView(),
    );
  }
}