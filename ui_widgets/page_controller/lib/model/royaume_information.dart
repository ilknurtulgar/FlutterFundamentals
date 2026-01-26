import 'package:flutter/material.dart';

class RoyaumeInformation {
 String title;
 String subtitle;
 String imagePath;
 

 RoyaumeInformation({required this.title, required this.subtitle, required this.imagePath});

}

final List<RoyaumeInformation> kingdomPages = [
  RoyaumeInformation(title: "Krallığa hoş geldin", subtitle: "Prens Alexander'ın teknoloji dünyasını keşfet.", imagePath: "assets/images/rachel.jpeg"),
  RoyaumeInformation(title: "Hızlı Bilgi Akışı", subtitle: "Tüm duyurular artık cebinde", imagePath: "assets/images/ross.jpeg")

];

final List<Color> pageColors = [
   Color(0xFFE3F2FD),
   Color(0xFFFCE4EC),
  
];