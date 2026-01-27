import 'package:flutter/material.dart';

class TabbarViewExercise extends StatefulWidget {
  const TabbarViewExercise({super.key});

  @override
  State<TabbarViewExercise> createState() => _TabbarViewExerciseState();
}

class _TabbarViewExerciseState extends State<TabbarViewExercise> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold( 
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: PreferredSize(preferredSize: Size.fromHeight(60),

            child: Container(
              
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(20) ),
              child: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.pink
                ,tabs: 
                      [
              Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Icon(Icons.inbox,size: 18,),
                  SizedBox(width: 8,),
                  Text("Inbox")
              ],)),
              Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Icon(Icons.inbox,size: 18,),
                  SizedBox(width: 8,),
                  Text("Arc")
              ],)),
              Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Icon(Icons.inbox,
                  
                  size: 18,),
                  SizedBox(width: 8,),
                  Text("Del")
              ],)),
              Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.warning,
              size: 18), SizedBox(width: 8), Text("Bomb")])),
                      ]),
            ),
          ),
        title: Text("TabBar",style: TextStyle(color: Colors.pink),),
        )
        ,body: TabBarView(children: 
      [
        Text("inbox",style: TextStyle(color: Colors.pink),),
        Text("arc",style: TextStyle(color: Colors.pink)),
        Text("del",style: TextStyle(color: Colors.pink)),
        Text("warn",style: TextStyle(color: Colors.pink))
      
      ]),),
    );
  }
}