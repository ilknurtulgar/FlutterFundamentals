import 'package:flutter/material.dart';

import 'service/notification_service.dart';
import 'utils/util.dart';
import 'views/challenge_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotificationService.init();
  runApp(const SecretChallenge());
  
}

class SecretChallenge extends StatefulWidget {
  const SecretChallenge({super.key});

  @override
  State<SecretChallenge> createState() => _SecretChallengeState();
}

class _SecretChallengeState extends State<SecretChallenge> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtil.background,
      ),
      home:  ChallengeView(),
    );
  }
}
