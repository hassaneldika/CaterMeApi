// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/screens/login_page.dart';
import 'package:cater_me_api/Pages/AddressPage/ui/screens/address_page.dart';
import 'package:cater_me_api/Pages/FriendPage/ui/screens/friend_page.dart';
import 'package:cater_me_api/Pages/NotificationPage/ui/screens/notification_page.dart';
import 'package:cater_me_api/Pages/OccassionPage/ui/screens/occassion_page.dart';
import 'package:cater_me_api/Pages/OrderPage/ui/screens/order_page.dart';
import 'package:cater_me_api/Pages/PaymentPage/ui/screens/payment_page.dart';
import 'package:cater_me_api/Pages/ProfilePage/ui/screens/profile_page.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_body.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_top.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width,
            child: widgetAppBar(context, 'Settings', 15,
                "assets/images/Icon ionic-ios-add-circle-outline.png", () {
              Navigator.pop(context);
            }, () {}, const Color(0xff3E5521)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: widgetTopSetting(
                              context,
                              "assets/images/Icon ionic-ios-notifications-outline.png",
                              'Notification',
                              () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NotificatoinPage(),
                                    ));
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: widgetTopSetting(
                              context,
                              "assets/images/Icon awesome-clipboard-list.png",
                              'Orders',
                              () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const OrderPage(),
                                    ));
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: widgetTopSetting(
                              context,
                              "assets/images/Icon awesome-calendar-check.png",
                              'Occasions',
                              () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const OccassionPage(),
                                    ));
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: widgetTopSetting(
                              context,
                              "assets/images/Icon awesome-headset.png",
                              'Support',
                              () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width,
                      child: widgetBody(context, 'Profile',
                          "assets/images/Icon material-account-circle.png", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ));
                      },
                          const Divider(
                            height: 1,
                            indent: 1,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          null,
                          14,
                          null),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(context, 'Addresses',
                        "assets/images/Icon material-location-on.png", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddressPage(),
                          ));
                    },
                        const Divider(
                          height: 1,
                          indent: 1,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        null,
                        14,
                        null),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(context, 'Friends',
                        "assets/images/Icon awesome-user-friends.png", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FriendPage()));
                    },
                        const Divider(
                          height: 1,
                          indent: 1,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        null,
                        14,
                        null),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(context, 'Payment method',
                        "assets/images/Icon awesome-credit-card.png", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentPage(),
                          ));
                    },
                        const Divider(
                          height: 1,
                          indent: 1,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        null,
                        14,
                        null),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(
                        context, 'Language', "assets/images/EN.png", () {
                      //showBottomSheet(context);
                      showModalBottomSheet<void>(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 200,
                            child: Column(
                              children: <Widget>[
                                ListTile(title: const Text('Language',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),onTap: () {},),
                                ListTile(title: const Text('English',style: TextStyle(color: Colors.black,),),onTap: () {Navigator.of(context).pop(context);},),
                                ListTile(title: const Text('العربية',style: TextStyle(color: Colors.black,),),onTap: () {Navigator.of(context).pop(context);},),
                              ],
                            ),
                          );
                        },
                      );
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => MainPage(),
                      //     ));
                    },
                        const Divider(
                          height: 1,
                          indent: 1,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        null,
                        14,
                        null),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(
                        context, 'Mode', "assets/images/Icon feather-sun.png", () {
                      //showBottomSheet(context);
                      showModalBottomSheet<void>(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 200,
                            child: Column(
                              children: <Widget>[
                                ListTile(title: const Text('Mode',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),onTap: () {},),
                                ListTile(leading: const Icon(Icons.sunny),title: const Text('Dark',style: TextStyle(color: Colors.black,),),onTap: () {Navigator.of(context).pop(context);},),
                                ListTile(leading: const Icon(Icons.sunny),title: const Text('Light',style: TextStyle(color: Colors.black,),),onTap: () {Navigator.of(context).pop(context);},),
                              ],
                            ),
                          );
                        },
                      );
                    },
                        const Divider(
                          height: 1,
                          indent: 1,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        null,
                        14,
                        null),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(
                        context,
                        'Terms',
                        "assets/images/terms-and-conditions.png",
                        () {},
                        const Divider(
                          height: 1,
                          indent: 1,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        null,
                        14,
                        null),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: widgetBody(
                        context,
                        'Contact us',
                        "assets/images/Icon material-contacts.png",
                        () {},
                        null,
                        null,
                        14,
                        null),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width,
                child: widgetBody(context, 'Sign out',
                    "assets/images/Icon feather-log-out.png", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                }, null, Colors.red, 14, Colors.red)),
          ),
        ],
      ),
    );
  }
}
