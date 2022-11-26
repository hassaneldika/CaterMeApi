// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class LoginAuthEvent extends Equatable {
  
}

// First event
class LoginEvent extends LoginAuthEvent {
  String email;
  String password;
  LoginEvent({
    required this.email,
    required this.password,
  });
  @override
  List<Object?> get props => [email, password];
}

