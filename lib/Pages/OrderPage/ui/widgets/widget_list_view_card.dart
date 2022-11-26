import 'package:cater_me_api/Pages/OrderDetailPage/ui/screens/order_detail_page.dart';
import 'package:flutter/material.dart';

Widget widgetListViewCard(BuildContext context, String text) {
  return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailPage(),
                    ));
              },
              child: Card(
                child: ListTile(
                  title: Text(text),
                ),
              ),
            );
          },
        ),
      ));
}
