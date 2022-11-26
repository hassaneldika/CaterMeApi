// ignore_for_file: avoid_print

import 'package:cater_me_api/AuthenticationPage/LoginPage/repository/login_repo.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/state_manager/login_event.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/state_manager/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginAuthBloc extends Bloc<LoginAuthEvent, LoginAuthState> {
  final LoginAuthRepo _authRepo;
  LoginAuthBloc(this._authRepo) : super(LoginAuthLoading()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginAuthLoading());
      print("you emit first state");
      final result = await _authRepo.login(event.email, event.password);
      if (result != "user not found") {
        emit(LoginAuthSuccessful());
      }
      if (result == "user not found") {
        emit(LoginAuthError("Missing password or user not found"));
      }
    });
  }
}
