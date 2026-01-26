import 'package:flutter/material.dart';
import 'package:notification_center/service/notification_service.dart';
import 'package:notification_center/utils/util.dart';
import 'package:notification_center/views/challenge_view.dart';

class SecretSolveView extends StatefulWidget {
  const SecretSolveView({super.key});

  @override
  State<SecretSolveView> createState() => _SecretSolveViewState();
}

class _SecretSolveViewState extends State<SecretSolveView> {
  final TextEditingController secretController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 15), () {
      if (mounted &&
          secretController.text != "ESCAPE" &&
          secretController.text != "escape")
            Navigator.pop(context);
    });
  }


  void _onConfirm() async {
    if (secretController.text == "ESCAPE" ||
        secretController.text == "escape") {
      await LocalNotificationService.showNotification(
        "SİSTEM",
        "Mesaj Deşifre edildi: ${TextUtil.secret}",
      );

      Future.delayed(const Duration(seconds: 5), (){
        LocalNotificationService.cancelNotification(0);
      });

      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ChallengeView()),
        );
      }
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Kod hatalı!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              TextUtil.secretInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorUtil.textColor,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 30),
            Text(
              TextUtil.secret,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorUtil.textColor,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextField(
                cursorColor: ColorUtil.important,
                controller: secretController,
                autofocus: true,
                style: TextStyle(color: ColorUtil.textColor),
                decoration: InputDecorationExtension.forTextField(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _onConfirm,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: ColorUtil.background,
                foregroundColor: ColorUtil.textColor,
                side: BorderSide(color: ColorUtil.textColor, width: 1),
              ),
              child: Text(TextUtil.approve),
            ),
          ],
        ),
      ),
    );
  }
}

extension InputDecorationExtension on InputDecoration {
  static InputDecoration forTextField({String? hintText}) {
    return InputDecoration(
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: ColorUtil.important, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: ColorUtil.important, width: 1),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
