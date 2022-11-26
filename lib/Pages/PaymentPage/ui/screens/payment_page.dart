// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:cater_me_api/Pages/PaymentPage/ui/widgets/widget_method_list_view_card.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width,
              child: widgetAppBar(context, 'Payment method', 15,
                  "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                Navigator.pop(context);
              }, (){}, const Color(0xff3E5521)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: widgetMethodListViewCard(context, '**** **** ****', '2187', 'assets/images/NoPath - Copy (12).png',  0.055, 0.055,)
                  )
      ],),
    );
  }
}