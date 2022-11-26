

// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class AuthLogin extends Equatable {
  final String email;
  final String password;
  AuthLogin({
    required this.email,
    required this.password,
  });
  
  AuthLogin copyWith({
    String? email,
    String? password,
  }) {
    return AuthLogin(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'email': email});
    result.addAll({'password': password});
  
    return result;
  }

  factory AuthLogin.fromMap(Map<String, dynamic> map) {
    return AuthLogin(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }


    @override
  List<Object?> get props => [
    email, password,
  ];

  }
