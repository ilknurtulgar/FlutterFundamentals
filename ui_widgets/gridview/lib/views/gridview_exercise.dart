import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../model/neonapp_model.dart';
import 'app_detail_view.dart';

class GridviewExercise extends StatefulWidget {
  const GridviewExercise({super.key});

  @override
  State<GridviewExercise> createState() => _GridviewExerciseState();
}

class _GridviewExerciseState extends State<GridviewExercise> {
  Future<void> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      appList.shuffle();
    });
  }

  void _shareApp(String appName, String storeURL){
   final String message = "Neon Apps: $appName\n$storeURL";
   Share.share(message, subject: 'Share the app');
  }
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neon Apps", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: GridView.count(
          childAspectRatio: 0.85,
          physics: const AlwaysScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          padding: EdgeInsets.all(10),
          children: List.generate(appList.length, (index) {
            return CupertinoContextMenu(
               actions: [
                CupertinoContextMenuAction(
                  onPressed: (){
                   Navigator.pop(context);
                  _shareApp(appList[index].appName, appList[index].storeURL);
                  },
                  trailingIcon: Icons.ios_share_sharp,
                  child: Text("Share App"),
                ),
              ],
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppDetailView(app: appList[index]),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15),side: BorderSide(color: isSelected ? Colors.deepPurple : Colors.transparent,width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            appList[index].appIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          appList[index].appName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          appList[index].appCategory,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
