import 'package:flutter/material.dart';

Widget widgetListViewCard(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: ScrollConfiguration(behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false), 
    child: ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Card( 
          child: ListTile(
            title: Text(text),
          ),
        );
      },
    ),)
  );
}
