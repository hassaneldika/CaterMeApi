// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/OrderPage/ui/widgets/widget_list_view_card.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width,
              child: widgetAppBar(context, 'Orders', 15,
                  "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                Navigator.pop(context);
              }, (){}, const Color(0xff3E5521)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: widgetListViewCard(context, 'Dinner'),)
        ],
      ),
    );
  }
}