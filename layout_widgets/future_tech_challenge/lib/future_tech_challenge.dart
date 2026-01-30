import 'package:flutter/material.dart';

class FutureTechChallenge extends StatefulWidget {
  const FutureTechChallenge({super.key});

  @override
  State<FutureTechChallenge> createState() => _FutureTechChallengeState();
}

class _FutureTechChallengeState extends State<FutureTechChallenge> {
  final List<Map<String, dynamic>> iOTList = [
    {"name": "Smart Light", "image": "assets/images/lamp.png", "isActive": false},
    {"name": "Air Condition", "image": "assets/images/snow.png","isActive": false},
    {"name": "Smart Speaker", "image": "assets/images/speaker.png","isActive": false},
    {"name": "Robo-Vacuum", "image": "assets/images/robo-vacuum.png","isActive": false},
  ];

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate =
        "${now.day}.${now.month}.${now.year}, ${now.hour}:${now.minute}";

    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade800,
        elevation: 0,
        title: Column(
          children: [
            Text(
              "FutureTech",
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            Text(
              formattedDate,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: iOTList.length,
        itemBuilder: (context, index) {
          return _buildDeviceButton(
            iOTList[index]["name"]!,
            iOTList[index]["image"]!,
            iOTList[index]["isActive"] ,
            (value) {
              setState(() {
                iOTList[index]["isActive"] = value;
              });
            },
          );
        },
      ),
    );
  }

  Widget _buildDeviceButton(
    String title,
    String assetsPath,
    bool value,
    Function(bool) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.lightBlue, width: 1),
          backgroundColor: Colors.indigo.shade800,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(assetsPath, fit: BoxFit.contain),
              ),
            ),
    
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Switch(
              value: value,
              activeTrackColor: Colors.lightBlue,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
