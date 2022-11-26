import 'package:flutter/material.dart';

Widget widgetExpansionTile(
    BuildContext context, String text1, String text2, String text3) {
  return Card(
    child: ExpansionTile(
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      title: Text(text1, style: const TextStyle(fontSize: 12, color: Colors.grey)),
    children: [
      ListTile(title: Text(text2, style: const TextStyle(fontSize: 12,),), onTap: (){},),
      ListTile(title: Text(text3, style: const TextStyle(fontSize: 12,),), onTap: (){},),
    ],
    ),
  );
}
