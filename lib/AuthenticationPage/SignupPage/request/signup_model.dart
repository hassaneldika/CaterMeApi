

// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class AuthSignup extends Equatable {
  final String email;
  final String password;
  AuthSignup({
    required this.email,
    required this.password,
  });
  
  AuthSignup copyWith({
    String? email,
    String? password,
  }) {
    return AuthSignup(
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

  factory AuthSignup.fromMap(Map<String, dynamic> map) {
    return AuthSignup(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }


    @override
  List<Object?> get props => [
    email, password,
  ];

  }
