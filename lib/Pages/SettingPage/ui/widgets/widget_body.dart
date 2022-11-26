import 'package:flutter/material.dart';

Widget widgetBody(BuildContext context,   String text,
  String iconadd,
  VoidCallback onTap,
  Divider? divider,
  Color? color,
  double? size,
  Color? colorIcon,)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: onTap,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7, left: 10),
                  child: Image.asset(iconadd, 
                  height:MediaQuery.of(context).size.height * 0.035, width:MediaQuery.of(context).size.width * 0.035, ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 10,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: divider,
        ),
      ],
    );
  }