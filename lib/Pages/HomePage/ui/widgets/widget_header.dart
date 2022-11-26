import 'package:cater_me_api/Pages/SettingPage/ui/screens/setting_page.dart';
import 'package:flutter/material.dart';

Widget widgetHeader(BuildContext context) {
  return Column(
    children: [
      const SizedBox(
        height: 18,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SettingPage()),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/user.png'),
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/accepted logo cater me1-01.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.05,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/Icon awesome-search.png'),
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    ],
  );
}
