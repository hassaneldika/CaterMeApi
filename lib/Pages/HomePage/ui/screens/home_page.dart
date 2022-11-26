// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/Pages/EventPage/ui/screens/event_page.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_bloc.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_event.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_state.dart';
import 'package:cater_me_api/Pages/HomePage/response/models/user_model.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_addons_image.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_float_action.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_header.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_menu_image.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_slider.dart';
import 'package:cater_me_api/Pages/HomePage/ui/widgets/widget_text_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/user_repo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(),
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Column(
                children: [
                  widgetHeader(context),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width,
                      child: widgetSlider(context)),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: widgetTextInfo(context)),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.38,
                      child: widgetMenuImage(context)),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: widgetTextInfo(context)),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: BlocProvider(
                        create: (context) => UserBloc(
                          RepositoryProvider.of<UserRepository>(context),
                        )..add(LoadUserEvent()),
                        child: BlocBuilder<UserBloc, UserState>(
                          builder: (context, state) {
                            if (state is UserLoadingState) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is UserLoadedState) {
                              List<UserModel> userList = state.users;
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (_, index) {
                                    return Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      child: widgetAddonsImage(
                                                          context,
                                                          NetworkImage(
                                                            userList[index]
                                                                .avatar!,
                                                          ),
                                                          userList[index]
                                                              .email!,
                                                          userList[index]
                                                              .first_name!,
                                                          userList[index]
                                                              .last_name!,
                                                          const Color(
                                                              0xff3E5521),
                                                          8),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  });
                            }
                            if (state is UserErrorState) {
                              return const Center(
                                child: Text('Error'),
                              );
                            }
                            return Container();
                          },
                        ),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: widgetTextInfo(context)),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: BlocProvider(
                        create: (context) => UserBloc(
                          RepositoryProvider.of<UserRepository>(context),
                        )..add(LoadUserEvent()),
                        child: BlocBuilder<UserBloc, UserState>(
                          builder: (context, state) {
                            if (state is UserLoadingState) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is UserLoadedState) {
                              List<UserModel> userList = state.users;
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (_, index) {
                                    return Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      child: widgetAddonsImage(
                                                          context,
                                                          NetworkImage(
                                                            userList[index]
                                                                .avatar!,
                                                          ),
                                                          userList[index]
                                                              .email!,
                                                          userList[index]
                                                              .first_name!,
                                                          '',
                                                          const Color(
                                                              0xff3E5521),
                                                          8),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  });
                            }
                            if (state is UserErrorState) {
                              return const Center(
                                child: Text('Error'),
                              );
                            }
                            return Container();
                          },
                        ),
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              child: buildFloationg(
                  context, 'What\'s your event?', 'Date,Place,Guests...', () {
              //       showModalBottomSheet(
              //   context: context,
              //   isScrollControlled: true,
              //   builder: (context) {
              //     return FractionallySizedBox(
              //       heightFactor: 0.97,
              //       child: Container(
              //         decoration: const BoxDecoration(
              //           // color: Color.fromARGB(255, 214, 3, 108),
              //           color: Color.fromARGB(255, 243, 239, 241),
              //           borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(30.0),
              //             topRight: Radius.circular(30.0),
              //           ),
              //         ),
              //         child: const EventPage(),
              //       ),
              //     );
              //   },
              // );
                showModalBottomSheet(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 0.97,
                      child: Container(
                        decoration: const BoxDecoration(
                          //color: Color.fromARGB(255, 214, 3, 108),
                          color: Color.fromARGB(255, 243, 239, 241),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: const EventPage(),
                      ), 
                    );
                  },
                );
              }, Icons.keyboard_arrow_up_outlined,
                  // MediaQuery.of(context).size.width * 0.03,
                  ))),
    );
  }
}
