
import 'dart:convert';

class UserModel {
  final int? id;
  final String? email;
  final String? first_name;
  final String? last_name;
  final String? avatar;
  UserModel({
     this.id,
     this.email,
     this.first_name,
     this.last_name,
     this.avatar,
  });
  

  UserModel copyWith({
    int? id,
    String? email,
    String? firstname,
    String? lastname,
    String? avatar,
  }) {
    return UserModel(
      id: id ,
      email: email ,
      first_name: firstname ,
      last_name: lastname ,
      avatar: avatar ,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      first_name: json['first_name'] ?? 'First Name',
      last_name: json['last_name'] ?? 'Last Name',
      avatar: json['avatar'] ?? '',
    );
  }

  }
