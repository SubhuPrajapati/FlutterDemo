/// success : true
/// message : null
/// data : {"eligible_offtake":0,"total_offtake":0,"quarter_eligible_offtake":0,"quarter_total_offtake":0,"month_eligible_offtake":0,"month_total_offtake":0,"points":0}

class TotalOfftakeMainModel {
  bool _success;
  dynamic _message;
  Data _data;

  bool get success => _success;
  dynamic get message => _message;
  Data get data => _data;

  TotalOfftakeMainModel({
      bool success, 
      dynamic message, 
      Data data}){
    _success = success;
    _message = message;
    _data = data;
}

  TotalOfftakeMainModel.fromJson(dynamic json) {
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

/// eligible_offtake : 0
/// total_offtake : 0
/// quarter_eligible_offtake : 0
/// quarter_total_offtake : 0
/// month_eligible_offtake : 0
/// month_total_offtake : 0
/// points : 0

class Data {
  int _eligibleOfftake;
  int _totalOfftake;
  int _quarterEligibleOfftake;
  int _quarterTotalOfftake;
  int _monthEligibleOfftake;
  int _monthTotalOfftake;
  int _points;

  int get eligibleOfftake => _eligibleOfftake;
  int get totalOfftake => _totalOfftake;
  int get quarterEligibleOfftake => _quarterEligibleOfftake;
  int get quarterTotalOfftake => _quarterTotalOfftake;
  int get monthEligibleOfftake => _monthEligibleOfftake;
  int get monthTotalOfftake => _monthTotalOfftake;
  int get points => _points;

  Data({
      int eligibleOfftake, 
      int totalOfftake, 
      int quarterEligibleOfftake, 
      int quarterTotalOfftake, 
      int monthEligibleOfftake, 
      int monthTotalOfftake, 
      int points}){
    _eligibleOfftake = eligibleOfftake;
    _totalOfftake = totalOfftake;
    _quarterEligibleOfftake = quarterEligibleOfftake;
    _quarterTotalOfftake = quarterTotalOfftake;
    _monthEligibleOfftake = monthEligibleOfftake;
    _monthTotalOfftake = monthTotalOfftake;
    _points = points;
}

  Data.fromJson(dynamic json) {
    _eligibleOfftake = json["eligible_offtake"];
    _totalOfftake = json["total_offtake"];
    _quarterEligibleOfftake = json["quarter_eligible_offtake"];
    _quarterTotalOfftake = json["quarter_total_offtake"];
    _monthEligibleOfftake = json["month_eligible_offtake"];
    _monthTotalOfftake = json["month_total_offtake"];
    _points = json["points"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["eligible_offtake"] = _eligibleOfftake;
    map["total_offtake"] = _totalOfftake;
    map["quarter_eligible_offtake"] = _quarterEligibleOfftake;
    map["quarter_total_offtake"] = _quarterTotalOfftake;
    map["month_eligible_offtake"] = _monthEligibleOfftake;
    map["month_total_offtake"] = _monthTotalOfftake;
    map["points"] = _points;
    return map;
  }

}