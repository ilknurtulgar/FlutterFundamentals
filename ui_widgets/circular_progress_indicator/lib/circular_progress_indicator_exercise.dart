import 'dart:async';

import 'package:flutter/material.dart';

class CircularProgressIndicatorExercise extends StatefulWidget {
  const CircularProgressIndicatorExercise({super.key});

  @override
  State<CircularProgressIndicatorExercise> createState() => _CircularProgressIndicatorExerciseState();
}

class _CircularProgressIndicatorExerciseState extends State<CircularProgressIndicatorExercise> {
  int count = 0;
  bool isStart = false;
  List<Color> colorList = [
    Colors.pink,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              if(isStart) return;
              setState(() {
                isStart = !isStart;
              });

              Timer.periodic(const Duration(milliseconds: 100), (timer){
                if(count >= 100){
                  timer.cancel();
                  count = 0;
                  isStart = false;
                  setState(() {
                    isStart = false;
                  });
                }else {
                  setState(() {
                    count++;
                  });
                }
              });
            }, child: Text("Beni başlat!"),),
            SizedBox(height: 15,),
            isStart ? CircularProgressIndicator(value: count / 100,color:  colorList[(count / 10).floor() % colorList.length]) : SizedBox.fromSize(),
            SizedBox(height: 15,),
            Text("$count",style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    ),);
  }
}