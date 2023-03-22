// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextStyle myTextStyle11(
{
  Color textColor = Colors.brown,
  FontWeight fontWeight = FontWeight.bold
}
    ) {
  return TextStyle(
    fontSize: 55,
    fontWeight: fontWeight,
    fontStyle: FontStyle.italic,
    color: textColor
  );
}