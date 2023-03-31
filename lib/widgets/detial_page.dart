import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        child: Hero(
          child: Image.asset('assets/image/bg.jpg'),
          tag: 'background',
        ),
      ),
    );
  }

}