import 'dart:convert';

import 'package:dio/dio.dart';

class AuthRepo {
  static Future logIn(String email, String pass) async {
    var response = await Dio(BaseOptions(
      validateStatus: (status) {
        switch (status) {
          case 404:
            return true;
          case 401:
            return true;
          case 202:
            return true;
          case 400:
            return true;
          default:
            return false;
        }
      },
    )).post('https://carrentino.ru/users/api/token/',
        data: {"email": email, "password": pass});
    print(response.data);
    if (response.statusCode == 202 || response.statusCode == 201) {
      print('good');
      return true;
    } else if (response.statusCode == 400) {
      print('bad');
      return false;
    }
  }
}
