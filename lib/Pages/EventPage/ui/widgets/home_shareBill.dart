import 'package:flutter/material.dart';

Widget buildShareBill (BuildContext context, String text)
{
  return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Center(
                // ignore: unnecessary_new
                child: new Text(
                  text,
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 25,
                      color: Color(0xff3E5521)),
                ),
              ),
    );
}