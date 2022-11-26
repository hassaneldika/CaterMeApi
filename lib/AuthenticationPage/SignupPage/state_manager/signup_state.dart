// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class SignupAuthState extends Equatable {}

class SignupAuthInitial extends SignupAuthState {
  @override
  List<Object> get props => [];
}

class SignupAuthSuccessful extends SignupAuthState {
  @override
  List<Object> get props => [];
}

class SignupAuthLoading extends SignupAuthState {
  @override
  List<Object> get props => [];
}

class SignupAuthError extends SignupAuthState {
  String msgError;
  SignupAuthError(this.msgError,);
  @override
  List<Object> get props => [msgError];
}
