import 'package:data_table/passenger_model.dart';
import 'package:flutter/material.dart';

import 'passenger_detail_view.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({super.key});

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("Titanic Passenger List"),
      backgroundColor: Colors.blueAccent,
      ),
    body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              teamTable(context, Team.Flutter.name,Team.Flutter),
              teamTable(context, Team.iOS.name,Team.iOS),
              teamTable(context, Team.Android.name,Team.Android),
              teamTable(context, Team.Design.name,Team.Design),
            ],
          ),
        )),
    ),);
  }
}

Widget teamTable(BuildContext context, String title, Team team){
  final teamList = passengers.where((p) => p.team == team).toList();
  return Column(crossAxisAlignment: CrossAxisAlignment.start
  ,children: [
    Text(title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
     SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: DataTable(
          showCheckboxColumn: false,
          columns:[ DataColumn(label: Text("Ad"),),
          DataColumn(label: Text("Soyad"),) ,
          DataColumn(label: Text("Yaş"),)],
          rows: teamList.map((passenger){
            return DataRow( 
              onSelectChanged: (selected){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PassengerDetailView(passenger: passenger)));
              },
              cells: [
              DataCell(Text(passenger.name)),
              DataCell(Text(passenger.surname)),
              DataCell(Text(passenger.age.toString())),
            ]);
          }).toList(),
          ),
     ),
        Divider(height: 40,)
    
  ],);
}

