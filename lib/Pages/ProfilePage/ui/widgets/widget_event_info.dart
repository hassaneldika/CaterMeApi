import 'package:flutter/material.dart';

Widget widgetEventDate(BuildContext context, String text1, String text2,) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // color: Colors.red,
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: text1,
                    labelStyle: const TextStyle(
                      fontSize: 10,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    hintText: text2,
                    hintStyle: const TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    contentPadding: const EdgeInsets.only(left: 30, bottom: 10)),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
      ),


  );
}
