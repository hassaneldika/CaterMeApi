import 'dart:convert';


import 'package:cater_me_api/Pages/HomePage/response/models/user_model.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_event.dart';
import 'package:http/http.dart';

class UserRepository {
  String endpoint = 'https://reqres.in/api/users?page=2';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  add(LoadUserEvent loadUserEvent) {}
}
