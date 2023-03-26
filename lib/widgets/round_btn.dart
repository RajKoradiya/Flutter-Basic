import 'package:flutter/material.dart';

class RoundBtn extends StatelessWidget{
  final String btName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  RoundBtn({ required this.btName ,
      this.icon,
      this.bgColor = Colors.green,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();
    },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
      child: icon != null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Container(
          width: 5,
        ),
        Text(
          btName, style: textStyle,)
      ],

    ) : Text(btName, style: textStyle,),
    );
  }

}