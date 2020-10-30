/// success : true
/// message : "Dashboard detail get successfully."
/// data : {"dashboardCount":{"customer_count":"54","total_points":"9725","pcr_wheeler_tyre":"243","two_three_wheeler_tyre":"65"},"monthWiseCounts":{"months":["April","May","June","July","August","September","October","November","December","January","February","March"],"counts":["75","50","0","275","1525","2075","1375","2125","450","50","900","175"]},"isClamRegistrationOpen":false}

class Dashboard_count_model {
  bool _success;
  String _message;
  Data _data;

  bool get success => _success;
  String get message => _message;
  Data get data => _data;

  Dashboard_count_model({
      bool success, 
      String message, 
      Data data}){
    _success = success;
    _message = message;
    _data = data;
}

  Dashboard_count_model.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    return map;
  }

}

/// dashboardCount : {"customer_count":"54","total_points":"9725","pcr_wheeler_tyre":"243","two_three_wheeler_tyre":"65"}
/// monthWiseCounts : {"months":["April","May","June","July","August","September","October","November","December","January","February","March"],"counts":["75","50","0","275","1525","2075","1375","2125","450","50","900","175"]}
/// isClamRegistrationOpen : false

class Data {
  DashboardCount _dashboardCount;
  MonthWiseCounts _monthWiseCounts;
  bool _isClamRegistrationOpen;

  DashboardCount get dashboardCount => _dashboardCount;
  MonthWiseCounts get monthWiseCounts => _monthWiseCounts;
  bool get isClamRegistrationOpen => _isClamRegistrationOpen;

  Data({
      DashboardCount dashboardCount, 
      MonthWiseCounts monthWiseCounts, 
      bool isClamRegistrationOpen}){
    _dashboardCount = dashboardCount;
    _monthWiseCounts = monthWiseCounts;
    _isClamRegistrationOpen = isClamRegistrationOpen;
}

  Data.fromJson(dynamic json) {
    _dashboardCount = json["dashboardCount"] != null ? DashboardCount.fromJson(json["dashboardCount"]) : null;
    _monthWiseCounts = json["monthWiseCounts"] != null ? MonthWiseCounts.fromJson(json["monthWiseCounts"]) : null;
    _isClamRegistrationOpen = json["isClamRegistrationOpen"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_dashboardCount != null) {
      map["dashboardCount"] = _dashboardCount.toJson();
    }
    if (_monthWiseCounts != null) {
      map["monthWiseCounts"] = _monthWiseCounts.toJson();
    }
    map["isClamRegistrationOpen"] = _isClamRegistrationOpen;
    return map;
  }

}

/// months : ["April","May","June","July","August","September","October","November","December","January","February","March"]
/// counts : ["75","50","0","275","1525","2075","1375","2125","450","50","900","175"]

class MonthWiseCounts {
  List<String> _months;
  List<String> _counts;

  List<String> get months => _months;
  List<String> get counts => _counts;

  MonthWiseCounts({
      List<String> months, 
      List<String> counts}){
    _months = months;
    _counts = counts;
}

  MonthWiseCounts.fromJson(dynamic json) {
    _months = json["months"] != null ? json["months"].cast<String>() : [];
    _counts = json["counts"] != null ? json["counts"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["months"] = _months;
    map["counts"] = _counts;
    return map;
  }

}

/// customer_count : "54"
/// total_points : "9725"
/// pcr_wheeler_tyre : "243"
/// two_three_wheeler_tyre : "65"

class DashboardCount {
  String _customerCount;
  String _totalPoints;
  String _pcrWheelerTyre;
  String _twoThreeWheelerTyre;

  String get customerCount => _customerCount;
  String get totalPoints => _totalPoints;
  String get pcrWheelerTyre => _pcrWheelerTyre;
  String get twoThreeWheelerTyre => _twoThreeWheelerTyre;

  DashboardCount({
      String customerCount, 
      String totalPoints, 
      String pcrWheelerTyre, 
      String twoThreeWheelerTyre}){
    _customerCount = customerCount;
    _totalPoints = totalPoints;
    _pcrWheelerTyre = pcrWheelerTyre;
    _twoThreeWheelerTyre = twoThreeWheelerTyre;
}

  DashboardCount.fromJson(dynamic json) {
    _customerCount = json["customer_count"];
    _totalPoints = json["total_points"];
    _pcrWheelerTyre = json["pcr_wheeler_tyre"];
    _twoThreeWheelerTyre = json["two_three_wheeler_tyre"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["customer_count"] = _customerCount;
    map["total_points"] = _totalPoints;
    map["pcr_wheeler_tyre"] = _pcrWheelerTyre;
    map["two_three_wheeler_tyre"] = _twoThreeWheelerTyre;
    return map;
  }

}