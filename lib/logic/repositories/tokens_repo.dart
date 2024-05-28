import 'package:car_app/const/links.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TokensRepo {
  static Future writeToken(String a, String r) async {
    var aTkn = await Hive.openBox('aTkn');
    var rTkn = await Hive.openBox('rTkn');
    if (aTkn.isNotEmpty) {
      aTkn.clear();
    }
    aTkn.addAll([a]);
    if (rTkn.isEmpty) {
      rTkn.clear();
    }
    rTkn.addAll([r]);
  }

  static Future readToken() async {
    var aTkn = await Hive.openBox('aTkn');
    var rTkn = await Hive.openBox('rTkn');
    var a = aTkn.values.first;
    var r = rTkn.values.first;
    return [a, r];
  }

  static Future refreshToken() async {
    var tkns = await readToken();
    var response = await Dio()
        .post('$api/users-api/api/token/refresh/', data: {'refresh': tkns[1]});
    var a = response.data['accessToken'];
    var r = response.data['refreshToken'];
    await writeToken(a, r);
    return a;
  }
}
