import 'package:dio/dio.dart';
import 'package:shoko_ui/shoko_ui.dart';

class AuthRepo {
  static Future logIn(String email, String pass) async {
    final Map<String, String> data = {
      "email": email,
      "password": pass,
    };
    print(data);
    Response response = await Dio(BaseOptions(
      validateStatus: (status) {
        switch (status) {
          case 201:
          case 202:
          case 401:
          case 402:
            return true;
          default:
            return false;
        }
      },
    )).post('https://carrentino.ru/users/api/token/', data: data);
    if (response.statusCode == 202 || response.statusCode == 201) {
      print('good');
      return true;
    } else {
      print('bad');
      return false;
    }
  }
}
