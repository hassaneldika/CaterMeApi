import 'package:flutter/material.dart';

Widget widgetElevatedButton(BuildContext context, VoidCallback onTap, String text, Color backgroundColor, BorderRadius borderRadius) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.08,
    width : MediaQuery.of(context).size.width,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, 
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(text),
    ),
  );
}
