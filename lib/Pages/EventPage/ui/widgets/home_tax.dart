import 'package:flutter/material.dart';

Widget buildTax(BuildContext context, String text, text1) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                text,
                style: const TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                text1,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Divider(
            height: 0.5,
            indent: 1,
            endIndent: 0,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
