import 'package:flutter/material.dart';
import 'package:quiz/splash.dart';

void main() {
  runApp(const Splash());
}                                                         

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_screen()
    );
  }
}
