import 'package:flutter/material.dart';
import 'package:listview/news_model.dart';

class SliverListExercise extends StatefulWidget {
  const SliverListExercise({super.key});

  @override
  State<SliverListExercise> createState() => _SliverListExerciseState();
}

class _SliverListExerciseState extends State<SliverListExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverList.builder(
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
            ],
          ),
        ),
      ),
    );
  }
}
