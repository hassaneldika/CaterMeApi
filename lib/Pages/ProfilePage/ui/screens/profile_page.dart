// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_elevatedbutton.dart';
import 'package:cater_me_api/Pages/ProfilePage/ui/widgets/widget_body.dart';
import 'package:cater_me_api/Pages/ProfilePage/ui/widgets/widget_event_info.dart';
import 'package:cater_me_api/Pages/ProfilePage/ui/widgets/widget_profile_textfield.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/screens/setting_page.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_appbar.dart';
import 'package:cater_me_api/Pages/SettingPage/ui/widgets/widget_body.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width,
              child: widgetAppBar(context, 'Profile', 15,
                  "assets/images/Icon ionic-ios-add-circle-outline.png", () {
                Navigator.pop(context);
              }, (){}, const Color(0xff3E5521)),
              ),
              Expanded(
              child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.68,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 20, right: 10, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width,
                              child: widgetEventDate(context, 'First name', ''),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width,
                              child: widgetEventDate(context, 'Last name', ''),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width,
                              child:
                                  widgetEventDate(context, 'Gender', 'Gender'),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width,
                              child: widgetEventDate(
                                  context, 'Date of birth', 'Date of birth'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: widgetElevatedButton(context, () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SettingPage()));
                              }, 'Save', const Color(0xff3E5521), BorderRadius.circular(18))
                            ),
                          ],
                        ),
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
                      height: MediaQuery.of(context).size.height * 0.22,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          right: 10,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width,
                              child: widgetProfileTextfield(
                                context,
                                'Email address',
                                'Example@gmail.com',
                                null,
                                const Color(0xff3E5521),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width,
                              child: widgetProfileTextfield(
                                context,
                                'Phone number',
                                '+96100000000',
                                Icons.edit_sharp,
                                const Color(0xff3E5521),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: buildBody(
                            context,
                            'Change password',
                            Icons.lock_outlined,
                            () {},
                            null,
                            Colors.black,
                            20,
                            Colors.grey)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 202, 197, 197)),
                        child: buildBody(
                            context,
                            'Delete account',
                            Icons.delete_outline_outlined,
                            () {},
                            null,
                            const Color.fromARGB(255, 209, 0, 0),
                            20,
                            const Color.fromARGB(255, 209, 0, 0))),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}