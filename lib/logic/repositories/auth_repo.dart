import 'dart:convert';

import 'package:car_app/const/links.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
    )).post('$api/users/api/token/', data: {"email": email, "password": pass});
    print(response.data);
    if (response.statusCode == 202 || response.statusCode == 201) {
      var aTkn = await Hive.openBox('aTkn');
      var aToken = await Hive.openBox('aTkn');
      print('good');
      return true;
    } else {
      print('bad');
      return false;
    }
  }
}
