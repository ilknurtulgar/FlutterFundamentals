import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogView extends StatefulWidget {
  const AlertDialogView({super.key});

  @override
  State<AlertDialogView> createState() => _AlertDialogViewState();
}

class _AlertDialogViewState extends State<AlertDialogView> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Alert dialog box"),
                      content: Text("You have raised an Alert Dialog box"),
                    ),
                  );
                },
                child: Text("Butonless Alert dialog"),
              ),

              ElevatedButton(
                onPressed: () {
                  const String buttonTitle = "Okay";
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Alert dialog box"),
                      content: Text("You have raised an Alert Dialog box"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print(buttonTitle);
                            Navigator.of(context).pop();
                          },
                          child: Text(buttonTitle),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("Single Button Alert Dialog"),
              ),

              ElevatedButton(
                onPressed: () {
                  const String yesTitle = "Yes";
                  const String noTitle = "No";
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Alert dialog box"),
                      content: Text("You have raised an Alert Dialog box"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print(yesTitle);
                            Navigator.of(context).pop();
                          },
                          child: Text(yesTitle),
                        ),

                        TextButton(
                          onPressed: () {
                            print(noTitle);
                            Navigator.of(context).pop();
                          },
                          child: Text(noTitle),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("Double Button Alert dialog"),
              ),

              ElevatedButton(
                onPressed: () {
                  const String yesTitle = "Yes";
                  const String noTitle = "No";
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Alert dialog box"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Lütfen gizli notunuzu aşağıya yazın:"),
                          TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print("Note: ${_controller.text}");
                            Navigator.of(context).pop();
                            _controller.text = "";
                          },
                          child: Text(yesTitle),
                        ),

                        TextButton(
                          onPressed: () {
                            print(noTitle);
                            Navigator.of(context).pop();
                            _controller.text = "";
                          },
                          child: Text(noTitle),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("İnput Button Alert dialog"),
              ),

              ElevatedButton(
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) => CupertinoActionSheet(
                      title: Text("paylaşım paneli"),
                      message: Text(
                        "dosya veya resim paylaşmak için bir seçenek belirleyin.",
                      ),
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            print("dosya paylaşılıyor.");
                            Navigator.pop(context);
                          },
                          child: Text("dosya paylaş"),
                        ),

                        CupertinoActionSheetAction(
                          onPressed: () {
                            print("Resim paylaşılıyor..");
                            Navigator.pop(context);
                          },
                          child: Text("resim paylaş"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("activity controllerı aç"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
