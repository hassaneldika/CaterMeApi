// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/FriendPage/ui/widgets/widget_image_list_view_card.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width,
              child: widgetAppBar(context, 'Friends', 15,
                  "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                Navigator.pop(context);
              }, (){}, const Color(0xff3E5521)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: widgetImageListViewCard(context, 'Walid Taktak', 'assets/images/Icon ionic-md-contact.png', 0.053, 0.053)
                  )
              ],
      ),
    );
  }
}