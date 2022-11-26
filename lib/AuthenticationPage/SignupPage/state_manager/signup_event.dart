// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class SignupAuthEvent extends Equatable {
  
}

// First event
class SignupEvent extends SignupAuthEvent {
  String email;
  String password;
  SignupEvent({
    required this.email,
    required this.password,
  });
  @override
  List<Object?> get props => [email, password];
}

