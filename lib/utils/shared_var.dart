import 'package:shared_preferences/shared_preferences.dart';

class SharedVar {
  static Future<void> setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("tokenAluno", token);
  }

  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('tokenAluno') ?? "";
  }
}
