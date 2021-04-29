import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  //TODO
  //این ای پی ها اشتباه هستند
  //برای نمونه در صورت تعویض این ای پی ها برنامه کار میکنه
  String _signUpUrl =
    //  'http://192.168.43.216/toplearn_shop/connect.php/?action=register_user'
      'http://192.168.43.216/toplearn_shop/connect.php/?action=register_user'
  ;
  String _LoginUrl =
      'http://192.168.43.216/toplearn_shop/connect.php/?action=register_user';

  Future signUpRequest(var username, var email, var password) async {
    var response = await http.post(
      _signUpUrl,
      body: jsonEncode({
        'username': username,
        'email': email,
        'password': password,
      }),
    );
    print(response.body);
    notifyListeners();
  }

  Future LoginRequest(var username, var password) async {
    var response = await http.post(
      _LoginUrl,
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    setToken(jsonDecode(response.body)['auth_token']);
    notifyListeners();

  }

  Future setToken(var token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', token);
  }
  Future getToken(var token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', token);
    notifyListeners();

  }

}
