import 'package:flutter_test_app/common/CommonResponce.dart';
import 'package:flutter_test_app/model/dashboard/dashboard_count_model.dart';
import 'package:flutter_test_app/model/dashboard/engage_customer_model.dart';
import 'package:flutter_test_app/model/dashboard/grow_more_model.dart';
import 'package:flutter_test_app/model/dashboard/sms_credit_model.dart';
import 'package:flutter_test_app/model/dashboard/total_offtake_main_model.dart';
import 'package:flutter_test_app/model/dashboard/total_offtake_model.dart';
import 'package:flutter_test_app/model/dashboard/total_point_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeController extends GetxController {
  var dashboarcountModel = Dashboard_count_model().obs;
  var smsCountModel = Sms_credit_model().obs;
  var enagageCustomerModel = engage_customer_model().obs;
  var growMore = Grow_more_model().obs;
  var totalOfftakeModel = TotalOfftakeMainModel().obs;
  var totalPoint = Total_point_model().obs;

  @override
  void onInit() {
    getTotalOfftake();
    getTotalPoint();
    getGrowCustomer();
    getEngageCustomer();
    getSmsCredit();
    getDashboardCount();
    super.onInit();
  }

  getDashboardCount() async {
    final fullUrl = CommonResponce.baseUrl + "" + CommonResponce.dashboardCount;
    var data = await CommonResponce.get(fullUrl);

    var totalPointModel = Dashboard_count_model.fromJson(data);
    dashboarcountModel.value = totalPointModel;
  }

  getSmsCredit() async {
    final fullUrl = CommonResponce.baseUrl + "" + CommonResponce.smsCredit;
    var data = await CommonResponce.get(fullUrl);
    var totalPointModel = Sms_credit_model.fromJson(data);
    smsCountModel.value = totalPointModel;
  }

  getEngageCustomer() async {
    final fullUrl =
        CommonResponce.baseUrl + "" + CommonResponce.enagageCustomer;
    var data = await CommonResponce.get(fullUrl);

    var totalPointModel = engage_customer_model.fromJson(data);

    enagageCustomerModel.value = totalPointModel;
  }

  getGrowCustomer() async {
    final fullUrl = CommonResponce.baseUrl + "" + CommonResponce.growCustomer;
    var data = await CommonResponce.get(fullUrl);

    var totalPointModel = Grow_more_model.fromJson(data);
    growMore.value = totalPointModel;
  }

  getTotalOfftake() async {
    final fullUrl =
        CommonResponce.baseUrl + "" + CommonResponce.totalOfftakeUrl;
    var data = await CommonResponce.get(fullUrl);

    var totalPointModel = TotalOfftakeMainModel.fromJson(data);

    totalOfftakeModel.value = totalPointModel;
  }

  getTotalPoint() async {
    final fullUrl = CommonResponce.baseUrl + "" + CommonResponce.totalPointUrl;
    var data = await CommonResponce.get(fullUrl);

    var totalPointModel = Total_point_model.fromJson(data);
    totalPoint.value = totalPointModel;
  }
}
