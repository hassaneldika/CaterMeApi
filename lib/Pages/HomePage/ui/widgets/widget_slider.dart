import 'package:carousel_slider/carousel_slider.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_bloc.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_event.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_state.dart';
import 'package:cater_me_api/Pages/HomePage/response/models/user_model.dart';
import 'package:cater_me_api/Pages/HomePage/repository/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget widgetSlider(BuildContext context) {
  return BlocProvider(
    create: (context) => UserBloc(
      RepositoryProvider.of<UserRepository>(context),
    )..add(LoadUserEvent()),
    child: Scaffold(
      body: BlocBuilder<UserBloc, UserState>(builder: ((context, state) {
        if (state is UserLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserLoadedState) {
          List<UserModel> userList = state.users;
          return Center(
            child: CarouselSlider.builder(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      viewportFraction: 1,
                    ),
                    itemCount: userList.length,
                    itemBuilder: (context, index, realIndex)  {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.network(
                                 userList[index].avatar!,
                                  height:
                                      MediaQuery.of(context).size.height * 0.98,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill,
                                )
                              ],
                            ),
                        );
                    },
                  ),
          );
             
        } if (state is UserErrorState) {
          return const Center(
            child: Text('Error'),
          );
        }
        return Container();
      })),
    ),
  );
}
