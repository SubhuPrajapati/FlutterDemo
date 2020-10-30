import 'package:shared_preferences/shared_preferences.dart';

class CommonSharedPreferenece {



  //Login
  static String isLogin = "ISLOGIN";
  static String accessToken = "ACCESSTOKEN";

  setString(String keyName, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(keyName, value);
  }

  getString(String keyName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString(keyName);
    return stringValue;
  }


  setBool(String keyName, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(keyName, value);
  }

  getBool(String keyName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyName);
  }
}
