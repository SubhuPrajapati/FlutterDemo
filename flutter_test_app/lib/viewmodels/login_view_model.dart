

import 'package:flutter/material.dart';
import 'package:flutter_test_app/model/login/login_model.dart';
import 'package:flutter_test_app/service/webservice.dart';

class LoginViewModel extends ChangeNotifier {



  var loginModel = LoginModel();

  /*Future<LoginModel> loginUser(String userId , String password) async {
    var futureLoginModel =  (await Webservice().loginUser(userId , password));

    return futureLoginModel;
  }*/

}