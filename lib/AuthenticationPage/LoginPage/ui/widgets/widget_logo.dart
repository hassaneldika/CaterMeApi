import 'package:flutter/material.dart';

Widget widgetLogo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          "assets/images/accepted logo cater me1-01.png",
          height: 280,
          width: 300,
        )),
  );
}
