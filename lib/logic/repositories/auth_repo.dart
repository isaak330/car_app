import 'package:dio/dio.dart';
import 'package:shoko_ui/shoko_ui.dart';

class AuthRepo {
  static Future logIn(String email, String pass) async {
    final Map<String, String> data = {
      "email": email,
      "password": pass,
    };

    Response response =
        await Dio().post('https://carrentino.ru/users/api/token/', data: data);
    if (response.statusCode == 202) {
      print('good');
      return true;
    } else {
      print('bad');
      return false;
    }
  }
}
