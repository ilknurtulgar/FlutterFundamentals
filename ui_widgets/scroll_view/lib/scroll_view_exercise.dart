import 'package:flutter/material.dart';

class ScrollViewExercise extends StatefulWidget {
  const ScrollViewExercise({super.key});

  @override
  State<ScrollViewExercise> createState() => _ScrollViewExerciseState();
}

class _ScrollViewExerciseState extends State<ScrollViewExercise> {
  final scrollController = ScrollController();
  List<String> actorList = [
    "Iron Man",
    "Captain America",
    "Thor",
    "Hulk",
    "Black Widow",
    "Hawkeye",
    "Spider-Man",
    "Doctor Strange",
  ];
  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  void scrollListener(){
    if(scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      showAndAlert();
    }
  }

  void showAndAlert(){
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Task is done"),
      content: Text("You have reached the end of the scroll view."),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text("okay"))
      ],
    ));
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actorList.map((actor){
              return 
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 60),
                  child: Text(
                    actor,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
