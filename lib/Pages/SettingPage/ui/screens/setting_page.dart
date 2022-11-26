// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/NotificationPage/ui/screens/notification_page.dart';
import 'package:cater_me_api/Pages/OccassionPage/ui/screens/occassion_page.dart';
import 'package:cater_me_api/Pages/OrderPage/ui/screens/order_page.dart';
import 'package:cater_me_api/Pages/ProfilePage/ui/screens/profile_page.dart';
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
              }, (){}, const Color(0xff3E5521)),
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
                      child: widgetBody(
                          context, 'Profile', "assets/images/Icon material-account-circle.png",
                          () {
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
                    child: widgetBody(
                        context, 'Addresses', "assets/images/Icon material-location-on.png",
                        () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const AddressesInfo(),
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
                        context, 'Friends', "assets/images/Icon awesome-user-friends.png", () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const FriendsInfo()));
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const PaymentInfo(),
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
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.06,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: Column(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 9),
                  //         child: Row(
                  //           children: [
                  //             const SizedBox(            
                  //               width: 10,
                  //             ),
                  //             Row(
                  //               children: [
                  //                 Image.asset('assets/images/EN.png', 
                  //                 height:MediaQuery.of(context).size.height * 0.035, width:MediaQuery.of(context).size.width * 0.035, ),
                  //               ],
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Row(
                  //               children: [
                  //                 InkWell(
                  //                   child: const Text(
                  //                     'Language',
                  //                     style: TextStyle(fontSize: 10),
                  //                   ),
                  //                   onTap: () {
                  //                     showModalBottomSheet<void>(
                  //                       context: context,
                  //                       shape: const RoundedRectangleBorder(
                  //                         borderRadius: BorderRadius.vertical(
                  //                           top: Radius.circular(20),
                  //                         ),
                  //                       ),
                  //                       builder: (BuildContext context) {
                  //                         return SizedBox(
                  //                           height: 200,
                  //                           child: Padding(
                  //                             padding: const EdgeInsets.only(
                  //                                 top: 10, left: 20),
                  //                             child: Column(
                  //                               crossAxisAlignment:
                  //                                   CrossAxisAlignment.start,
                  //                               children: <Widget>[
                  //                                 const Text(
                  //                                   'Language',
                  //                                   style: TextStyle(
                  //                                       fontWeight:
                  //                                           FontWeight.bold),
                  //                                 ),
                  //                                 TextButton(
                  //                                     child:
                  //                                         const Text('English'),
                  //                                     onPressed: () {
                  //                                       // context
                  //                                       //     .read<SwitchBloc>()
                  //                                       //     .add(
                  //                                       //         SwitchOnEvent());
                  //                                     }),
                  //                                 TextButton(
                  //                                     child:
                  //                                         const Text('العربية'),
                  //                                     onPressed: () {
                  //                                       // context
                  //                                       //     .read<SwitchBloc>()
                  //                                       //     .add(
                  //                                       //         SwitchOffEvent());
                  //                                     }),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         );
                  //                       },
                  //                     );
                  //                   },
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       const Padding(
                  //         padding:
                  //             EdgeInsets.only(top: 10, left: 30, right: 30),
                  //         child: Divider(
                  //           height: 1,
                  //           indent: 1,
                  //           endIndent: 0,
                  //           color: Colors.grey,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.06,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: Column(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 9),
                  //         child: Row(
                  //           children: [
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Row(
                  //               children: [
                  //                  Image.asset('assets/images/Icon feather-sun.png', 
                  //                 height:MediaQuery.of(context).size.height * 0.015, width:MediaQuery.of(context).size.width * 0.015, ),
                  //               ],
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Row(
                  //               children: [
                  //                 InkWell(
                  //                   child: const Text(
                  //                     'Mode',
                  //                     style: TextStyle(fontSize: 10),
                  //                   ),
                  //                   onTap: () {
                  //                     showModalBottomSheet<void>(
                  //                       context: context,
                  //                       shape: const RoundedRectangleBorder(
                  //                         borderRadius: BorderRadius.vertical(
                  //                           top: Radius.circular(20),
                  //                         ),
                  //                       ),
                  //                       builder: (BuildContext context) {
                  //                         return SizedBox(
                  //                           height: 200,
                  //                           child: Padding(
                  //                             padding: const EdgeInsets.only(
                  //                                 top: 10, left: 20),
                  //                             child: Column(
                  //                               crossAxisAlignment:
                  //                                   CrossAxisAlignment.start,
                  //                               children: <Widget>[
                  //                                 const Text(
                  //                                   'Mode',
                  //                                   style: TextStyle(
                  //                                       fontWeight:
                  //                                           FontWeight.bold),
                  //                                 ),
                  //                                 TextButton(
                  //                                     child: const Text('Dark'),
                  //                                     onPressed: () {
                  //                                       // context
                  //                                       //     .read<SwitchBloc>()
                  //                                       //     .add(
                  //                                       //         SwitchOnEvent());
                  //                                     }),
                  //                                 TextButton(
                  //                                     child:
                  //                                         const Text('Light'),
                  //                                     onPressed: () {
                  //                                       // context
                  //                                       //     .read<SwitchBloc>()
                  //                                       //     .add(
                  //                                       //         SwitchOffEvent());
                  //                                     }),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         );
                  //                       },
                  //                     );
                  //                   },
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       const Padding(
                  //         padding:
                  //             EdgeInsets.only(top: 10, left: 30, right: 30),
                  //         child: Divider(
                  //           height: 1,
                  //           indent: 1,
                  //           endIndent: 0,
                  //           color: Colors.grey,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
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
                        'Language',
                        "assets/images/EN.png",
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
                        'Mode',
                        "assets/images/Icon feather-sun.png",
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
                child: widgetBody(
                    context, 'Sign out', "assets/images/Icon feather-log-out.png", () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const LoginPage(),
                  //     ));
                }, null, Colors.red, 14, Colors.red)),
          ),
        ],
      ),
    );
  }
}
