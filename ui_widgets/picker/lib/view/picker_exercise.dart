import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picker/model/person_model.dart';
import 'package:picker/view/edit_profile_view.dart';

class PickerExercise extends StatefulWidget {
  const PickerExercise({super.key});

  @override
  State<PickerExercise> createState() => _PickerExerciseState();
}

class _PickerExerciseState extends State<PickerExercise> {
  Person person = Person(name: "Henüz girilmedi", age: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: person.backgroundColor,
      appBar: AppBar(title: Text("Profil"), backgroundColor: Colors.deepPurpleAccent,foregroundColor: Colors.white,),
      body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
         mainAxisSize:  MainAxisSize.max,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Container(
            decoration: BoxDecoration(
            shape: BoxShape.circle,),
            child: CircleAvatar(radius: 100,backgroundImage: person.imagePath != null ? FileImage(File(person.imagePath!)) : null,
            child: person.imagePath == null ? Icon(Icons.person,size: 50,) : null,
            ),
          ),
          SizedBox(height: 35),
        
          Card(
            margin: EdgeInsets.symmetric(horizontal: 30),
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                 Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 5,),
                    Text(person.name,style: person.textstyle.copyWith(fontSize: 24)),
                  ],
                ),
                Divider(height: 20,),
                Row(
                  children: [
                    Icon(Icons.cake),
                    SizedBox(width: 5,),
                    Text("${person.age}",style: person.textstyle.copyWith(fontSize: 18)),
                  ],
                ),
              ],
            ),
          )),
        
     
          SizedBox(height: 35),
        
          ElevatedButton.icon(onPressed: ()async{
             await Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileView(person: person)));
    
              setState(() {});
            },
           icon: Icon(Icons.auto_awesome),
           label: Text("PROFİLİ GÜNCELLE"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.deepPurple,
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              backgroundColor: Colors.white,
            shape:StadiumBorder(),)
           )
        
        
        
        ],),
      ),
    ),);  
  }
}
