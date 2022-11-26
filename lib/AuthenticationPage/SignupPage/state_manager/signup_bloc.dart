// // ignore_for_file: avoid_print


// import 'package:cater_me_api/AuthenticationPage/SignupPage/repository/signup_repo.dart';
// import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_event.dart';
// import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SignupAuthBloc extends Bloc<SignupAuthEvent, SignupAuthState> {
//   final SignupAuthRepo _authRepo;
//   SignupAuthBloc(this._authRepo) : super(SignupAuthLoading()) {
//     on<SignupEvent>((event, emit) async {
//       emit(SignupAuthLoading());
//       print("you emit first state");
//       final result = await _authRepo.signup(event.email, event.password);
//       if (result != "user not found") {
//         emit(SignupAuthSuccessful());
//       }
//       if (result == "user not found") {
//         emit(SignupAuthError("Missing password or user not found"));
//       }
//     });
//   }
// }



// ignore_for_file: avoid_print

import 'package:cater_me_api/AuthenticationPage/LoginPage/repository/login_repo.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_event.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupAuthBloc extends Bloc<SignupAuthEvent, SignupAuthState> {
  final LoginAuthRepo _authRepo;
  SignupAuthBloc(this._authRepo) : super(SignupAuthLoading()) {
    on<SignupEvent>((event, emit) async {
      emit(SignupAuthLoading());
      print("you emit first state");
      final result = await _authRepo.login(event.email, event.password);
      if (result != "user not found") {
        emit(SignupAuthSuccessful());
      }
      if (result == "user not found") {
        emit(SignupAuthError("Missing password or user not found"));
      }
    });
  }
}
