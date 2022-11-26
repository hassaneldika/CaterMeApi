import 'package:flutter/material.dart';

Widget buildTitle(BuildContext context)
{
  return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 90),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff3f3f3),
              ),
              child: const Center(
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title of occasion.',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
}