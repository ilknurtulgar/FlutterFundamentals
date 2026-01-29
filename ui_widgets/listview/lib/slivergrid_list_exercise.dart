import 'package:flutter/material.dart';
import 'package:listview/news_model.dart';

class SlivergridListExercise extends StatefulWidget {
  const SlivergridListExercise({super.key});

  @override
  State<SlivergridListExercise> createState() => _SlivergridListExerciseState();
}

class _SlivergridListExerciseState extends State<SlivergridListExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers:[ SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.8,
            ),
            itemCount: newsList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    newsList[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    newsList[index].date,
                    style: TextStyle(fontWeight: FontWeight.normal,),
                  ),
                  SizedBox(height: 5),
                  Text(
                    newsList[index].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
            },
          ),
        ]),
      ),
    );
  }
}
