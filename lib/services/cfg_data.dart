import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_katkemsos/model/api_url.dart';

class CfgData {

  Future<bool> setToken(String value) async {
    SharedPreferences _storage = await SharedPreferences.getInstance();
    return _storage.setString('token', value);
  }

  Future<String> getToken() async {
    SharedPreferences _storage = await SharedPreferences.getInstance();
    return _storage.getString('token') ?? ApiUrl.token;
  }

  Future<bool> setSignIn(bool value) async {
    SharedPreferences _storage = await SharedPreferences.getInstance();
    return _storage.setBool('signin', value);
  }

  Future<bool> getSignIn() async {
    SharedPreferences _storage = await SharedPreferences.getInstance();
    return _storage.getBool('signin') ?? false;
  }
}