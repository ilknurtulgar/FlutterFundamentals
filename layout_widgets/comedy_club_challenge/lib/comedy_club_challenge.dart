import 'package:flutter/material.dart';

import 'dummy_data.dart';

class ComedyClubChallenge extends StatefulWidget {
  const ComedyClubChallenge({super.key});

  @override
  State<ComedyClubChallenge> createState() => _ComedyClubChallengeState();
}

class _ComedyClubChallengeState extends State<ComedyClubChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Comedy Club",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        elevation: 5,
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        SizedBox(height: 30,),
        Expanded(child: Image.asset("assets/images/comedyclub.jpeg")),
        SizedBox(height: 30,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListView.builder(itemCount: comedyShows.length,scrollDirection: Axis.horizontal, itemBuilder: (context, index){
                return Card(elevation: 5,color: Colors.black,child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Image.asset(comedyShows[index]["image"]!, fit: BoxFit.cover,)),
                    Text(comedyShows[index]["title"]!,style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w700, fontSize: 18),),
                    Text(comedyShows[index]["comedian"]!, style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 16, fontWeight: FontWeight.w600),),
                    Text(comedyShows[index]["date"]!, style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 16, fontWeight: FontWeight.w600),) ,
                    Text(comedyShows[index]["price"]!, style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),);
            }),
          ),
        )
        

      ],),
    );
  }
}
