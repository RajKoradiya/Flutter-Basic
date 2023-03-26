// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextStyle myTextStyle20(
{
  // Color textColor = Colors.brown,
  FontWeight fontWeight = FontWeight.bold
}
    ) {
  return TextStyle(
      fontSize: 20,
      fontWeight: fontWeight,
      fontFamily: "NSW",
    // fontStyle: FontStyle.italic,
    // color: textColor
  );
}

TextStyle myTextStyle25(
    // {
    //   // Color textColor = Colors.brown,
    //   FontWeight fontWeight = FontWeight.bold
    // }
    ) {
  return TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: "NSW",
    fontStyle: FontStyle.italic,
    color: Colors.green
    // fontStyle: FontStyle.italic,
    // color: textColor
  );
}