import 'package:flutter/material.dart';

Widget buildBill(BuildContext context,   String text,
  double border,
  String text1,)
{
  return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Icon(Icons.person_outline_rounded),
                    ),
                    Text(
                      text,
                      style: const TextStyle(fontSize: 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Text(
                          text1,
                          style: const TextStyle(fontSize: 8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
}