import 'dart:convert';

import 'package:flutter_test_app/common/CommonHeader.dart';
import 'package:flutter_test_app/common/CommonSharedPreferenece.dart';
import 'package:flutter_test_app/common/pref.dart';
import 'package:http/http.dart' as http;

class CommonResponce {
  static var baseUrl = "https://staging-backend.jkadvantage.co.in/api/";

  static var loginUrl = "v1/auth/login";
  static var totalOfftakeUrl = "v1/crm-points/dashboard/new-dashboard-total-offtake";
  static var totalPointUrl = "v1/crm-points/dashboard/points";
  static var growCustomer = "v1/campaign-management/customer/grow-business";
  static var enagageCustomer = "v1/campaign-management/customer/engage-customer";
  static var smsCredit = "v1/campaign-management/purchase-sms/sms-credit";
  static var dashboardCount = "v2/warranty/secondary-points/dashboard-count";

  static Future<Map<String, dynamic>> get(String fullUrl) async {
    Map<String, String> map = CommonHeader.returnCommenHeader();
    var commonPreference = Pref();
    map["Authorization"] = commonPreference.getPrefValue(CommonSharedPreferenece.accessToken);
    final response = await http.get(fullUrl , headers: map);

    print("Get++"+response.body.toString());
    return _processResponse(response);
  }

  static Future<Map<String, dynamic>> post(
      String screenName, Map<String, dynamic> body, String fullUrl) async {
    Map<String, String> map;
    if (screenName == "login") {
      map = CommonHeader.returnCommenHeader();
      map["Content-Type"] = "application/x-www-form-urlencoded";
      map["Authorization"] = "Basic amt0eXJlOjEyMw==";
    } else {

      var commonPreference = Pref();
      map["Authorization"] = commonPreference.getPrefValue(CommonSharedPreferenece.accessToken);
    }
    final response = await http.post(fullUrl, body: body, headers: map);
    print("Post++"+response.body.toString());
    return _processResponse(response);
  }

  static Future<Map<String, dynamic>> _processResponse(
      http.Response response) async {
    final body = response.body ?? "";
    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      print("processResponse error");
      return {"error": true};
    }
  }
}
