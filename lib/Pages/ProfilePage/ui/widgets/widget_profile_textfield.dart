import 'package:flutter/material.dart';

Widget widgetProfileTextfield(BuildContext context, String text1, String text2,
    IconData? iconadd, Color iconColor) {
  return Form(
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
                fontSize: 8, color: Colors.black, fontWeight: FontWeight.bold),
            suffixIcon: InkWell(
              onTap: () {},
              child: Icon(
                iconadd,
                color: iconColor,
              ),
            ),
            contentPadding: const EdgeInsets.only(
              left: 10,
            ),
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ],
    ),
  );
}
