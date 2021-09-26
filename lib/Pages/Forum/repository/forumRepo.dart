import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sociable/Pages/Forum/model/forum.dart';
import 'package:sociable/helper/network.dart';
import 'package:sociable/helper/pref.dart';

class ForumRepository {
  Future<List<Forum>> listForum() async {
    var token = await Pref.getToken();
    http.Response res = await http.get(Uri.parse(EndPoint.listForum), headers: {'Authorization': 'Bearer ' + token});
    var data = json.decode(res.body);
    print(data);
    if (res.statusCode == 200) {
      List<dynamic> list = data['data'];
      return list.map((e) => Forum.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
