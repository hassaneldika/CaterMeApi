// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/NotificationPage/ui/widgets/widget_list_view_separate.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width,
              child: widgetAppBar(context, 'Addresses', 15,
                  "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                Navigator.pop(context);
              }, (){}, const Color(0xff3E5521)),
              ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,child: widgetListViewSeparate(context, 'Home', 0.035, 0.035, 'Street, building, apartment', 'Delete', 'assets/images/Icon feather-home.png', Icons.edit))
        ],
      ),
    );
  }
}