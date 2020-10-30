import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test_app/common/CommonAlertDialogue.dart';
import 'package:flutter_test_app/common/CommonColor.dart';
import 'package:flutter_test_app/common/CommonResponce.dart';
import 'package:flutter_test_app/common/CommonSharedPreferenece.dart';
import 'package:flutter_test_app/common/Router.dart';
import 'package:flutter_test_app/common/customDialogue.dart';
import 'package:flutter_test_app/common/pref.dart';
import 'package:flutter_test_app/controller/login_controller.dart';
import 'package:flutter_test_app/model/login/login_model.dart';
import 'package:flutter_test_app/view/forgot.dart';
import 'package:flutter_test_app/viewmodels/login_view_model.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: NewLoginDemoApp(),
  ));
}

class NewLoginDemoApp extends StatefulWidget {
  @override
  _NewLoginDemoAppState createState() => _NewLoginDemoAppState();
}

class _NewLoginDemoAppState extends State<NewLoginDemoApp> {
  final LoginController _loginController = Get.put(LoginController());

  forgotButtonClick() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecoverPassword()));
  }

  final userIdController = TextEditingController();
  final passwordController = TextEditingController();

  Future<LoginModel> _futureAlbum;
  FutureBuilder _futureBuilder;

  @override
  void initState() {
    // TODO: implement initState
    Pref.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget topSection = Column(
      children: [
        SizedBox(height: 60),
        Image.asset(
          'assets/images/loginlogo.png',
          width: 200,
        ),
        SizedBox(height: 16),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 8),
        Text(
          "Please sign in to your account",
          style: TextStyle(fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Container(
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "User Id",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextField(
              controller: _loginController.userIdTextController,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5),
                  ),
                ),
                hintStyle: new TextStyle(
                  color: Colors.grey[800],
                  height: 2.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: CommonColor.color[100], width: 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                hintText: "User Id",
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextField(
              controller: _loginController.passwordTextController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: CommonColor.color[100], width: 1.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5),
                  ),
                ),
                hintStyle: new TextStyle(
                  color: Colors.grey[800],
                  height: 2.0,
                ),
                hintText: "Password",
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              textColor: Colors.white,
              color: CommonColor.color[100],
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                /* loginButtonClick(
                    userIdController?.text, passwordController.text);*/

                if (_loginController.userIdTextController?.text
                        ?.toString()
                        ?.trim()
                        ?.length ==
                    0) {
                  {
                    CommonAlert.showAlertDialog(
                        context, "Opps", "Please enter userId");
                    return;
                  }
                }
                if (_loginController.passwordTextController?.text
                        ?.toString()
                        ?.trim()
                        ?.length ==
                    0) {
                  {
                    CommonAlert.showAlertDialog(
                        context, "Opps", "Please enter password");
                    return;
                  }
                }

                //    if (_formKey.currentState.validate()) {

                final fullUrl =
                    CommonResponce.baseUrl + "" + CommonResponce.loginUrl;
                var loginModel = _loginController.apiLogin("login", fullUrl)
                    as Future<LoginModel>;
                var commonSharedPrerences = Pref();
                loginModel.then((value) => {
                      if (value != null)
                        {
                          if (value.accessToken != null)
                            {
                              commonSharedPrerences.setPrefValue(
                                  CommonSharedPreferenece.accessToken,
                                  "Bearer " + value.accessToken.toString()),
                              Get.toNamed('/homeView')
                            }
                          else
                            {
                              CommonAlert.showAlertDialog(
                                  context, "Opps", value.errorModel[0].message)
                            }
                        }
                    });

                //  }

                /*var loginFutureModel = vm.loginUser(userIdController?.text, passwordController.text);
                loginFutureModel.then((value) => {
                 print("++++"+value.accessToken)
               });*/
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              textColor: Colors.white,
              color: CommonColor.color[50],
              child: Text(
                "Recover Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Get.toNamed('/forgotPasswordView');
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );

    return GetMaterialApp(
      title: 'Login Demo',
      getPages: Router.route,
      home: Scaffold(
          body: Column(
        children: [
          topSection,
        ],
      )),
    );
  }
}
