// ignore_for_file: avoid_print

import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_event.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_state.dart';
import 'package:cater_me_api/Pages/HomePage/repository/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  
  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      print("you emit second state");
      try {
        final users = await _userRepository.getUsers();
        emit(UserLoadedState(users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}


