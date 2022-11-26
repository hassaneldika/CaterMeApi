import 'package:flutter/material.dart';

Widget widgetTextButton(
    BuildContext context,
    Alignment alignment,
    String text,
    String text3,
    String text2,
    VoidCallback onTap,
    double fontSize,
    Color borderSideColor) {
  return Container(
    alignment: alignment,
    child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),side: BorderSide(color: borderSideColor),),),),
        child: RichText(text:
              TextSpan(text: text,style: 
              TextStyle(fontSize: fontSize,color: const Color.fromARGB(255, 0, 0, 0)),children: <InlineSpan>[
              TextSpan(text: text2,style: TextStyle(fontSize: fontSize, color: Colors.grey),),
              TextSpan(text: text3,style: TextStyle(fontSize: fontSize,color: const Color.fromARGB(255, 0, 0, 0)),),
            ]))),
  );
}
