import 'package:data_table/passenger_model.dart';
import 'package:flutter/material.dart';

class PassengerDetailView extends StatefulWidget {
  final PassengerModel passenger;
  const PassengerDetailView({super.key, required this.passenger});

  @override
  State<PassengerDetailView> createState() => _PassengerDetailViewState();
}

class _PassengerDetailViewState extends State<PassengerDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text("${widget.passenger.name} ${widget.passenger.surname}"),),
      body: SafeArea(child: Card(
        elevation: 5,
        margin: EdgeInsetsGeometry.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
        
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
               Icon(Icons.account_circle, size: 80, color: Colors.blueAccent),
              infoRow("Takım: ", widget.passenger.team.name),
              infoRow("Yaş: ", widget.passenger.age.toString()),
              infoRow("Email: ", widget.passenger.email),
              infoRow("Memleket: ", widget.passenger.homeTown),
            ],
          ),
        ),
      )));
  }
}

Widget infoRow(String label, String value){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(label, style: TextStyle(fontSize: 16,fontWeight:  FontWeight.bold),),
      Text(value, style: TextStyle(fontSize: 16),)
    
    ],),
  );
}