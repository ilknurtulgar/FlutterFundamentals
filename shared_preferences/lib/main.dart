import 'package:flutter/material.dart';
import 'package:shared_preferences/utils/color_util.dart';
import 'package:shared_preferences/view/journey_view.dart';

import 'utils/text_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TextUtil.appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtil.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorUtil.appbarBackgroundColor,
          foregroundColor: ColorUtil.appbarForegroundColor,
          elevation: 0,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorUtil.appbarBackgroundColor,
        ),
      ),
      home: const JourneyView(),
    );
  }
}


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "SharedPreferences",
//       theme: ThemeData(colorScheme: .fromSeed(seedColor: ColorUtil.background)),
//       home: Scaffold(
//         appBar: AppBar(
//           actionsPadding: EdgeInsets.all(5),
//           actions: [
//             Builder(
//               builder: (context) {
//                 return IconButton(
//                   icon: Icon(Icons.add_comment_rounded),
//                   onPressed: () {
//                     showModalBottomSheet(
//                       context: context,
//                       builder: (_) {
//                         return CustomBottomsheet(
//                           onTap: () {
//                             print("tıklandı");
//                           },
//                         );
//                       },
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//           toolbarHeight: 75,
//           title: Text("My Journey Book"),
//           backgroundColor: ColorUtil.appbarBackgroundColor,
//           foregroundColor: ColorUtil.appbarForegroundColor,
//           leading: Icon(Icons.location_city),
//         ),

//         body: Column(children: [
        
//       ],),
//       ),
//     );
//   }
// }
