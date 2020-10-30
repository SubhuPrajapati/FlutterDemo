import 'package:flutter_test_app/controller/login_controller.dart';
import 'package:get/get.dart';

class SampleBind extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}