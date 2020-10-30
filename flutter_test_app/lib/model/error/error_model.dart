/// statusCode : 400
/// status : 400
/// code : 400
/// message : "Either your User ID or Password are incorrect. Please try again."
/// name : "invalid_grant"

class Error_model {
  int _statusCode;
  int _status;
  int _code;
  String _message;
  String _name;

  int get statusCode => _statusCode;
  int get status => _status;
  int get code => _code;
  String get message => _message;
  String get name => _name;

  Error_model({
      int statusCode, 
      int status, 
      int code, 
      String message, 
      String name}){
    _statusCode = statusCode;
    _status = status;
    _code = code;
    _message = message;
    _name = name;
}

  Error_model.fromJson(dynamic json) {
    _statusCode = json["statusCode"];
    _status = json["status"];
    _code = json["code"];
    _message = json["message"];
    _name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["statusCode"] = _statusCode;
    map["status"] = _status;
    map["code"] = _code;
    map["message"] = _message;
    map["name"] = _name;
    return map;
  }

}