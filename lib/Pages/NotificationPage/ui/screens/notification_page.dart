// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/NotificationPage/ui/widgets/widget_list_view_separate.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:flutter/material.dart';

class NotificatoinPage extends StatefulWidget {
  const NotificatoinPage({Key? key}) : super(key: key);

  @override
  _NotificatoinPageState createState() => _NotificatoinPageState();
}

class _NotificatoinPageState extends State<NotificatoinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width,
                  child: widgetAppBar(context, 'Notifications', 15,
                      "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                    Navigator.pop(context);
                  }, (){}, const Color(0xff3E5521)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                    child: widgetListViewSeparate(context, 'Your order has been accepted', 0.015, 0.015, 'Now', '', 'assets/images/Ellipse 91.png', null)
                    ),
            ],
          ),
    );
  }
}