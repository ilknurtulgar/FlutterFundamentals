import 'package:flutter/material.dart';
import 'package:notification_center/utils/util.dart';

import 'secret_solve_view.dart';

class ChallengeView extends StatefulWidget {
  const ChallengeView({super.key});

  @override
  State<ChallengeView> createState() => _ChallengeViewState();
}

class _ChallengeViewState extends State<ChallengeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/secret.jpeg'),
            SizedBox(height: 100),
            Text(TextUtil.info,style: TextStyle(color: ColorUtil.textColor, fontWeight:  FontWeight.bold, fontSize: 15),textAlign: TextAlign.center,),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: ColorUtil.background,
                foregroundColor: ColorUtil.textColor,
                side: BorderSide(color: ColorUtil.textColor,width: 1)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SecretSolveView()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.private_connectivity, color: ColorUtil.textColor),
                  SizedBox(width: 12),
                  Text(
                    TextUtil.start,
                    style: TextStyle(color: ColorUtil.textColor),
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
