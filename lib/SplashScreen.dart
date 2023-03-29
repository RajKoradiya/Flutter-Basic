import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/IntroScreen.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("Flutter",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),)),
      ),
    );
  }
}