import 'package:flutter/material.dart';
import 'package:gridview/model/neonapp_model.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDetailView extends StatefulWidget {
  final NeonappModel app;
  const AppDetailView({super.key, required this.app});

  @override
  State<AppDetailView> createState() => _AppDetailViewState();
}

Future<void> _launchURL(String storeURL) async {
  final String cleanURL = storeURL.trim();
  final String encodedURL = Uri.encodeFull(cleanURL); 
  final Uri url = Uri.parse(encodedURL);

  try {

    await launchUrl(url, mode: LaunchMode.externalApplication);
  } catch (e) {
    debugPrint("Hata oluştu: $e");
  }
}

class _AppDetailViewState extends State<AppDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.app.appName, style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image.asset(
                        widget.app.appIcon,
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.category_outlined, size: 20, color: Colors.deepPurple),
                      SizedBox(width: 10,),
                      Text("Category: ${widget.app.appCategory}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today_outlined, size: 20, color: Colors.deepPurple),
                      SizedBox(width: 10,),
                      Text("Release Date: ${widget.app.releaseDate}"),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () => _launchURL(widget.app.storeURL),
                    label: Text("Open in App Store"),
                    icon: Icon(Icons.open_in_new),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
