import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(fontSize: 35, color: Colors.red),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home',)));
             }, child: Text("Next"))
          ],


        ),
      ),
    );
  }

}