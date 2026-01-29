import 'package:flutter/material.dart';
import 'package:listview/news_model.dart';

class ListviewExercise extends StatefulWidget {
  const ListviewExercise({super.key});

  @override
  State<ListviewExercise> createState() => _ListviewExerciseState();
}

class _ListviewExerciseState extends State<ListviewExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          SizedBox(height: 20),
          Text(
            newsList[0].title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          Text(newsList[0].date,style: TextStyle(fontWeight: FontWeight.normal),),
          SizedBox(height: 5,),
                   
          Text(newsList[0].description, style: TextStyle( fontSize: 12,fontWeight:  FontWeight.w500),  textAlign: TextAlign.center,),
          SizedBox(height: 20),

           Text(
            newsList[1].title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
           SizedBox(height: 10,),
          Text(newsList[1].date,style: TextStyle(fontWeight: FontWeight.normal),),
          SizedBox(height: 5,),
          Text(newsList[1].description, style: TextStyle( fontSize: 12,fontWeight:  FontWeight.w500),),
          SizedBox(height: 20),

           Text(
            newsList[2].title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
           SizedBox(height: 10,),
          Text(newsList[2].date,style: TextStyle(fontWeight: FontWeight.normal),),
          SizedBox(height: 5,),
          Text(newsList[2].description, style: TextStyle( fontSize: 12,fontWeight:  FontWeight.w500),),
          SizedBox(height: 20),

        ],
      ),
    );
  }
}
