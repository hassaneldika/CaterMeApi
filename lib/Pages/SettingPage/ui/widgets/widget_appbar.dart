import 'package:flutter/material.dart';

Widget widgetAppBar(BuildContext context, String title, final double font,
    String iconadd, 
    VoidCallback onTap, VoidCallback onTap2, Color backgroundColor) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: backgroundColor,
      titleSpacing: 0,
      leading: InkWell(
        onTap: onTap,
        child: const Icon(Icons.arrow_back_outlined),
      ),
      title: Text(title, style: TextStyle(fontSize: font),),
      actions: [InkWell(
        onTap: onTap2,
        child: Image.asset(iconadd, 
        height:MediaQuery.of(context).size.height * 0.055, width:MediaQuery.of(context).size.width * 0.055, ),
      ), const SizedBox(width: 20,)],
    ),
  );
}
