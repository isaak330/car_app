import 'dart:convert';
import 'dart:math';

import 'package:car_app/const/links.dart';
import 'package:car_app/logic/repositories/tokens_repo.dart';
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
      var a = response.data['access'];
      var r = response.data['refresh'];
      await TokensRepo.writeToken(a, r);
      return true;
    } else {
      print('bad');
      return false;
    }
  }
}
