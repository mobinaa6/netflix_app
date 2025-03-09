import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/screens/test.dart';
import 'package:flutter_application_netflix/screens/welcome_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
