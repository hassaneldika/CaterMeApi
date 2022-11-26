// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/OrderDetailPage/ui/widgets/widget_offer.dart';
import 'package:cater_me_api/Pages/OrderDetailPage/ui/widgets/widget_tax.dart';
import 'package:cater_me_api/Pages/ProfilePage/ui/widgets/widget_event_info.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width,
                child: widgetAppBar(context, 'Order details', 15,
                    "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                  Navigator.pop(context);
                }, () {}, const Color(0xff3E5521)),
              ),
              Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 10,
                            right: 10,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.57,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 20, right: 10, bottom: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(context,
                                        'Title of ocassion', 'Birthday party'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(context, 'Order date',
                                        'September 19, 2022'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(context, 'Event date',
                                        'September 25, 2022'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 20, bottom: 10),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Delivery address',
                                  style: TextStyle(
                                    color: Color(0xff3E5521),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 10,
                            right: 10,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.57,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 20, right: 10, bottom: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(
                                        context, 'Nickname', 'Home'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(
                                        context, 'Street', 'Street'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(context, 'Building',
                                        'taktak\'s building'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 20, bottom: 10),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Contact Info',
                                  style: TextStyle(
                                    color: Color(0xff3E5521),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 10,
                            right: 10,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.57,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 20, right: 10, bottom: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(
                                        context, 'Name', 'Walid taktak'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(
                                        context, 'Email', 'Email@gmail.com'),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.1,
                                    width: MediaQuery.of(context).size.width,
                                    child: widgetEventDate(context, 'Phone number','+961 00 000 000'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 20, bottom: 10),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Order Summary',
                                  style: TextStyle(
                                    color: Color(0xff3E5521),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        width: MediaQuery.of(context).size.width,
                                        child: widgetOffer(context,'Iftar Ramadan extra', 'SAR 15'),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        width: MediaQuery.of(context).size.width,
                                        child: widgetOffer(context, 'Breakfast', 'SAR 15'),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        width: MediaQuery.of(context).size.width,
                                        child: widgetOffer(context,'Coffee with chocolate flavor','SAR 15'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: widgetTax(context, 'Tax', 'SAR 100,000'),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: widgetTax(context, 'Dabberni', 'SAR 100,000'),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: widgetTax(context, 'Total', 'SAR 200,000'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
          
    );
  }
}