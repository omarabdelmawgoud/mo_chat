import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mo_chat/firebase_options.dart';
import 'package:mo_chat/constants.dart';
import 'package:mo_chat/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MoChat());
}

class MoChat extends StatelessWidget {
  const MoChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Constants.themecolor),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
