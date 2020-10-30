/// success : true
/// message : "Primary points retrieved successfully"
/// data : {"primaryPoints":0,"provisionalPoints":0,"year":2020}

class TotalOfftakeModel {
  bool _success;
  String _message;
  Data _data;

  bool get success => _success;
  String get message => _message;
  Data get data => _data;

  TotalOfftakeModel({
      bool success, 
      String message, 
      Data data}){
    _success = success;
    _message = message;
    _data = data;
}

  TotalOfftakeModel.fromJson(dynamic json) {
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

/// primaryPoints : 0
/// provisionalPoints : 0
/// year : 2020

class Data {
  int _primaryPoints;
  int _provisionalPoints;
  int _year;

  int get primaryPoints => _primaryPoints;
  int get provisionalPoints => _provisionalPoints;
  int get year => _year;

  Data({
      int primaryPoints, 
      int provisionalPoints, 
      int year}){
    _primaryPoints = primaryPoints;
    _provisionalPoints = provisionalPoints;
    _year = year;
}

  Data.fromJson(dynamic json) {
    _primaryPoints = json["primaryPoints"];
    _provisionalPoints = json["provisionalPoints"];
    _year = json["year"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["primaryPoints"] = _primaryPoints;
    map["provisionalPoints"] = _provisionalPoints;
    map["year"] = _year;
    return map;
  }

}