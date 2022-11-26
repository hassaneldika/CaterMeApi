import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_bloc.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_event.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_state.dart';
import 'package:cater_me_api/Pages/HomePage/response/models/user_model.dart';
import 'package:cater_me_api/Pages/HomePage/repository/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget widgetMenuImage(BuildContext context) {
  return SizedBox(
    // height: MediaQuery.of(context).size.height * 0.1,
    // width: MediaQuery.of(context).size.width,
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
                itemCount: 2,
                itemBuilder: (_, index) {
                  return Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.37,
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color:
                                    const Color.fromARGB(255, 236, 229, 229)),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage( image: NetworkImage(userList[index].avatar!,),fit: BoxFit.cover)),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Positioned(
                              height: 30,
                              width: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 3, right: 3),
                                child: FloatingActionButton(
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.add,
                                    color: Color(0xff3E5521),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]);
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
    ),
  );
}