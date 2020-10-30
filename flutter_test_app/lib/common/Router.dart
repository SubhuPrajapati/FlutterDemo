import 'package:flutter_test_app/view/forgot.dart';
import 'package:flutter_test_app/view/homeview.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Router {
  static var route = [
    GetPage(
      name: '/loginView',
      page: () => LoginDemoApp(),
    ),
    GetPage(
      name: '/forgotPasswordView',
      page: () => RecoverPassword(),
    ),

    GetPage(
      name: '/homeView',
      page: () => MyHomeView(),
    ),
  ];
}