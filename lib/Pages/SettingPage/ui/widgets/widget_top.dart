import 'package:flutter/material.dart';

Widget widgetTopSetting(
  BuildContext context,
  String iconadd,
  String text,
  VoidCallback onTap,
) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    body: Column(
      children: [
        const SizedBox(
          height: 7,
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfff3f3f3),
            ),
            child: Image.asset(iconadd, 
            height:MediaQuery.of(context).size.height * 0.015, width:MediaQuery.of(context).size.width * 0.015, ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 7),
        ),
      ],
    ),
  );
}
