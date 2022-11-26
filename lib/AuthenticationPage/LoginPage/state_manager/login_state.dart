// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class LoginAuthState extends Equatable {}

class LoginAuthInitial extends LoginAuthState {
  @override
  List<Object> get props => [];
}

class LoginAuthSuccessful extends LoginAuthState {
  @override
  List<Object> get props => [];
}

class LoginAuthLoading extends LoginAuthState {
  @override
  List<Object> get props => [];
}

class LoginAuthError extends LoginAuthState {
  String msgError;
  LoginAuthError(this.msgError,);
  @override
  List<Object> get props => [msgError];
}
