/// success : true
/// message : null
/// data : {"credit":3796}

class Sms_credit_model {
  bool _success;
  dynamic _message;
  Data _data;

  bool get success => _success;
  dynamic get message => _message;
  Data get data => _data;

  Sms_credit_model({
      bool success, 
      dynamic message, 
      Data data}){
    _success = success;
    _message = message;
    _data = data;
}

  Sms_credit_model.fromJson(dynamic json) {
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

/// credit : 3796

class Data {
  int _credit;

  int get credit => _credit;

  Data({
      int credit}){
    _credit = credit;
}

  Data.fromJson(dynamic json) {
    _credit = json["credit"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["credit"] = _credit;
    return map;
  }

}