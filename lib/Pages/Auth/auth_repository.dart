import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sociable/Pages/Auth/authModel.dart';
import 'package:sociable/helper/config.dart';
import 'package:sociable/helper/network.dart';
import 'package:sociable/helper/pref.dart';

class AuthRepository {
  Future<dynamic> loginProses(Auth auth) async {
    print(auth.loginBody());
    String token = await Pref.getToken();
    http.Response res = await http.post(Uri.parse(EndPoint.login), headers: {'Authorization': 'Bearer ' + token}, body: auth.loginBody());
    var data = json.decode(res.body);
    print(data);
    if (res.statusCode == 200) {
      return Auth.fromJson(data['data']);
    } else {
      return Config.alert(0, 'Login gagal, silahkan periksa akun anda');
    }
  }

  Future<dynamic> detailForum(String id) async {
    String token = await Pref.getToken();
    http.Response res = await http.post(Uri.parse(EndPoint.detail(id)), headers: {'Authorization': 'Bearer ' + token});
    var data = json.decode(res.body);
  }
}
