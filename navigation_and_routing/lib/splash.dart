import 'dart:async';
import 'package:flutter/material.dart';
import 'package:navigation_and_routing/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(
                ))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset('images/alu_logo.png')
        ),
    );
  }
}