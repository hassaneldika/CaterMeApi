import 'package:cater_me_api/AuthenticationPage/SignupPage/repository/signup_api_base.dart';

class SignupAuthRepo {
  final String _apiKey2 = "/api/register";
  final SignupApiBase _apiBase2 = SignupApiBase();

  Future<dynamic> signup(String? email, String password) async {
    final response = await _apiBase2.postSignup(
        _apiKey2, {"email": email, "password": password});
    return response;
  }
}


