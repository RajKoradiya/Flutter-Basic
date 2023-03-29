import 'package:flutter/material.dart';
// import 'package:flutter_demo/main.dart';

class IntroScreen extends StatelessWidget{
  var nameFromMain;
  IntroScreen(this.nameFromMain);

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
            Text("Welcome $nameFromMain", style: TextStyle(fontSize: 35, color: Colors.red),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
             }, child: Text("Next"))
          ],


        ),
      ),
    );
  }

}