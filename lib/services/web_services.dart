import 'package:dio/dio.dart';

import '../models/user_model/user.dart';

class WebService {
  //static const String url = "http://localhost:3000";
  static const String url = "http://192.168.137.1:3000";
  static const String userid = "1";

  static Future<List<User>?> getContactList() async {
    try {
      final response = await Dio().get('$url/get-friends/$userid');

      // var responseData = json.decode(response.data);
      List<User> users = [];
      for (var singleUser in response.data) {
        if (singleUser != null) {
          User user = User(
            id: singleUser["id"],
            name: singleUser["name"],
            level: singleUser["level"],
          );
          users.add(user);
        }
      }
      print(users);
      return users;
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<dynamic> getOnline() async {
    var response = await Dio().post('$url/get-online',
        data: {"id": "febin", "name": "Febin", "level": 1});
    if (response.statusCode == 201) {
      final String responseString = response.toString();
      return responseString;
    } else {
      return "Unsuccessful";
    }
  }
}
