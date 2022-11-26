import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_bloc.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_event.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_state.dart';
import 'package:cater_me_api/Pages/HomePage/response/models/user_model.dart';
import 'package:cater_me_api/Pages/HomePage/repository/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget widgetTextInfo(BuildContext context) {
  return BlocProvider(
    create: (context) => UserBloc(
      RepositoryProvider.of<UserRepository>(context),
    )..add(LoadUserEvent()),
    child: Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: ((context, state) {
        if (state is UserLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserLoadedState) {
          List<UserModel> userList = state.users;
          return ListView.builder(
              itemCount: 1,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(userList[index].first_name!),
                  subtitle: Text(userList[index].last_name!),
                );
              });
        }
        if (state is UserErrorState) {
          return const Center(
            child: Text('Error'),
          );
        }
        return Container();
      })),
    ),
  );
}
