import 'package:flutter/material.dart';
import 'package:listview/news_model.dart';

class ListviewBuilderExercise extends StatefulWidget {
  const ListviewBuilderExercise({super.key});

  @override
  State<ListviewBuilderExercise> createState() =>
      _ListviewBuilderExerciseState();
}

class _ListviewBuilderExerciseState extends State<ListviewBuilderExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
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
      ),
    );
  }
}
