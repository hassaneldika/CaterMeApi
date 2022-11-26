import 'package:flutter/material.dart';

Widget widgetListViewSeparate(
    BuildContext context, String text1, double height, double width ,String text2, String text3, String image, IconData? iconadd,) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: ScrollConfiguration(behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false), 
      child: ListView.separated(
        itemCount: 100,
        separatorBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Divider(height: 1),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                image,
                height: MediaQuery.of(context).size.height * height,
                width: MediaQuery.of(context).size.width * width,
              ),
            ),
            title: Transform.translate(
              offset: const Offset(-25, 0),
              child: Text(text1),
            ),
            subtitle: Transform.translate(
              offset: const Offset(-25, 0),
              child: Text(text2),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    iconadd,
                    size: 20.0,
                    color: const Color(0xff3E5521),
                  ),
                  onPressed: () {},
                ),
                TextButton(onPressed: () {}, child: Text(text3, style: const TextStyle(color: Colors.red),))
              ],
            ),
          );
        },
      ),
    ),
  );
}
