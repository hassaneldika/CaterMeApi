// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/NotificationPage/ui/widgets/widget_list_view_separate.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:flutter/material.dart';

class OccassionPage extends StatefulWidget {
 const OccassionPage({Key? key}) : super(key: key);

  @override
  _OccassionPageState createState() => _OccassionPageState();
}

class _OccassionPageState extends State<OccassionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width,
                  child: widgetAppBar(context, 'Occassions', 15,
                      "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                    Navigator.pop(context);
                  }, (){}, const Color(0xff3E5521)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: widgetListViewSeparate(context, 'Occassion title', 0.035, 0.035, 'Date, guests, time', 'Delete', 'assets/images/Icon awesome-calendar-alt.png', Icons.edit)
                  )
        ],
      ),
    );
  }
}