import 'package:cater_me_api/AuthenticationPage/LoginPage/repository/login_api_base.dart';

class LoginAuthRepo {
  final String _apiKey = "/api/login";
  final LoginApiBase _apiBase = LoginApiBase();

  Future<dynamic> login(String? email, String password) async {
    final response = await _apiBase.postLogin(
        _apiKey, {"email": email, "password": password});
    return response;
  }
}


