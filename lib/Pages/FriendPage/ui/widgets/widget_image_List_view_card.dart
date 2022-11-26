import 'package:flutter/material.dart';

Widget widgetImageListViewCard(BuildContext context, String text, String image, double height, double width, ) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: ScrollConfiguration(behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false), 
    child: ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Card( 
          child: ListTile(
            leading: Image.asset(
                image,
                height: MediaQuery.of(context).size.height * height,
                width: MediaQuery.of(context).size.width * width,
              ),
            title: Text(text),
          ),
        );
      },
    ),)
  );
}
