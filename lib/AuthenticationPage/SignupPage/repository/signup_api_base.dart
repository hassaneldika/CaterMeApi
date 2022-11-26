// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;   

class SignupApiBase {
  Future<dynamic> postSignup(String url, dynamic body) async {
    final response =
        await http.post(Uri.parse('https://reqres.in$url'), body: body);
    var responseJson = _returnResponse(response);
    print(responseJson);
    return responseJson["token"];
  }
}

_returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJSon = jsonDecode(response.body.toString());
      return responseJSon;

    case 400:
      var responseError = jsonDecode(response.body.toString());
      return responseError["Error"];

    default:
      return Exception('default Error ${response.statusCode.toString()}');
  }
}
