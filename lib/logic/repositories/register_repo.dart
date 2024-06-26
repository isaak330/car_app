import 'package:car_app/const/links.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class RegisterRepo {
  static Future register(
      String email, String name, String lName, String pass) async {
    var response = await Dio(BaseOptions(
      validateStatus: (status) {
        switch (status) {
          case 404:
            return true;
          case 401:
            return true;
          case 201:
            return true;
          case 400:
            return true;
          case 200:
            return true;
          default:
            return false;
        }
      },
    )).post('$api/users/registration/', data: {
      "email": email,
      "first_name": name,
      "last_name": lName,
      "password": pass
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      var box = Hive.openBox('');
      return true;
    } else if (response.statusCode == 400) {
      return 1;
    } else {
      return false;
    }
  }
}
