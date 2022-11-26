import 'package:flutter/material.dart';

Widget widgetTextField(BuildContext context, IconData? iconadd, String text1, double iconSize, final TextEditingController textcontroller,) {
  return SizedBox(
    height : MediaQuery.of(context).size.height * 0.08,
    width : MediaQuery.of(context).size.width,
    child: TextField(
      controller: textcontroller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        prefixIcon: Icon(iconadd, color: Colors.grey, size: iconSize,),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(width: 0,style: BorderStyle.none,),),
        hintText: text1,
        hintStyle: const TextStyle(fontSize: 10, color: Colors.grey),
      ),
    ),
  );
}
