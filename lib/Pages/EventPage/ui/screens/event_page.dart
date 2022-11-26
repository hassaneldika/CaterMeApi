// // ignore_for_file: library_private_types_in_public_api

// import 'package:cater_me_api/Pages/EventPage/ui/widgets/widget_container.dart';
// import 'package:cater_me_api/Pages/HomePage/ui/screens/home_page.dart';
// import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_float_action.dart';
// import 'package:flutter/material.dart';

// class EventPage extends StatefulWidget {
//   const EventPage({Key? key}) : super(key: key);

//   @override
//   _EventPageState createState() => _EventPageState();
// }

// class _EventPageState extends State<EventPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.transparent,
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
//       // floatingActionButton: Padding(
//       //   padding: const EdgeInsets.only(top: 10),
//       //   child: SizedBox(
//       //       height: MediaQuery.of(context).size.height * 0.12,
//       //       width: MediaQuery.of(context).size.width,
//       //       child: widgetFloationgAction(
//       //           context, 'What\'s your event?', 'Date,Place,Guests...', () {
//       //         Navigator.push(context,
//       //             MaterialPageRoute(builder: (context) => const HomePage()));
//       //       }, Icons.close_outlined, MediaQuery.of(context).size.width * 0.03)),
//       // ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//            SizedBox(height: MediaQuery.of(context).size.height * 0.05,child: widgetContainer(context),),
//             // Container(
//             //   decoration: const BoxDecoration(
//             //     borderRadius: BorderRadius.only(
//             //         topLeft: Radius.circular(40.0),
//             //         topRight: Radius.circular(40)),
//             //     color: Colors.white,
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_elevatedbutton.dart';
import 'package:cater_me_api/Pages/EventPage/ui/widgets/home_bill.dart';
import 'package:cater_me_api/Pages/EventPage/ui/widgets/home_calendar.dart';
import 'package:cater_me_api/Pages/EventPage/ui/widgets/home_offers.dart';
import 'package:cater_me_api/Pages/EventPage/ui/widgets/home_order_delivery.dart';
import 'package:cater_me_api/Pages/EventPage/ui/widgets/home_shareBill.dart';
import 'package:cater_me_api/Pages/EventPage/ui/widgets/home_tax.dart';
import 'package:cater_me_api/Pages/HomePage/repository/user_repo.dart';
import 'package:cater_me_api/Pages/HomePage/ui/screens/home_page.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_float_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              child: buildFloationg(
                  context, 'What\'s your event?', 'Date,Place,Guests...', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              }, Icons.close_outlined)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 1.22,
                  child: buildTitle(context)),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: buildHomeOrderDelivery(context)),
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width,
                              child: buildOffers(context, 'Iftar Ramadan extra', 'SAR 15', NetworkImage('https://pixabay.com/photos/flowers-meadow-sunlight-summer-276014/'))
                              // buildOffers(
                              //     context, 'Iftar Ramadan extra', 'SAR 15'),
                            )
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Column(
                      //     children: [
                      //       SizedBox(
                      //         height: MediaQuery.of(context).size.height * 0.22,
                      //         width: MediaQuery.of(context).size.width,
                      //         child:
                      //             buildOffers(context, 'Breakfast', 'SAR 15', ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Column(
                      //     children: [
                      //       SizedBox(
                      //         height: MediaQuery.of(context).size.height * 0.22,
                      //         width: MediaQuery.of(context).size.width,
                      //         child: buildOffers(context,
                      //             'Coffee with chocolate flavor', 'SAR 15'),
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: buildShareBill(context, 'Share Bill'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: buildBill(context, 'Walid taktak', 10, 'Share amount'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: buildBill(context, 'Kamal frenn', 10, '500,000 RAS'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: buildBill(context, 'Peter tohme', 10, 'Share amount'),
              ),
              const SizedBox(
                height: 60,
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
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: buildTax(context, 'Tax', 'SAR 100,000'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: buildTax(context, 'Dabberni', 'SAR 100,000'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: buildTax(context, 'Total', 'SAR 200,000'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: widgetElevatedButton(context, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  }, 'Checkout', const Color(0xff3E5521),
                      BorderRadius.circular(18))
                  // buildButton(context, () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => const HomePage()));
                  // }, const Color(0xff3E5521), 14, Colors.white, 'Checkout'),
                  ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
