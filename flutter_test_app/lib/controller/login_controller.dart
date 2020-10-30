import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/common/CommonResponce.dart';
import 'package:flutter_test_app/model/login/login_model.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController userIdTextController;
  TextEditingController passwordTextController;


  @override
  void onInit() {
    userIdTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  Future<LoginModel> apiLogin(String screenName, String fullUrl) async {
    Map<String, dynamic> body = {
      'username': userIdTextController?.text,
      'password': passwordTextController?.text,
      'grant_type': "password",
    };


    var data = await CommonResponce.post(screenName , body , fullUrl);

    var loginModel = LoginModel.fromJson(data);

    return loginModel;
  }

  @override
  void onClose() {
    userIdTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }
}