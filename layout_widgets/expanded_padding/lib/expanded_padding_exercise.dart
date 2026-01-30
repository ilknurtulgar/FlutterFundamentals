import 'package:flutter/material.dart';

class ExpandedPaddingExercise extends StatefulWidget {
  const ExpandedPaddingExercise({super.key});

  @override
  State<ExpandedPaddingExercise> createState() =>
      _ExpandedPaddingExerciseState();
}

class _ExpandedPaddingExerciseState extends State<ExpandedPaddingExercise> {
  final List<Map<String, String>> destinations = [
    {"name": "Paris", "image": "assets/images/paris.jpeg"},
    {"name": "Roma", "image": "assets/images/paris.jpeg"},
    {"name": "Londra", "image": "assets/images/paris.jpeg"},
    {"name": "İstanbul", "image": "assets/images/paris.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => print("object"),
              child: Column(
                children: [,""
                  Expanded(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        destinations[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      destinations[index]['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
