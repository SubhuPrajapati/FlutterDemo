/// success : true
/// message : "Grow your business detail retrieved successfully."
/// data : [{"name":"Tyre Purchase Due","image_url":"https://images-staging.jkadvantage.co.in/campaign_purpose/promote-tyre-purchase-icon%403x.png","type":"tyre_purchase_due"},{"name":"Promote Service","image_url":"https://images-staging.jkadvantage.co.in/campaign_purpose/promote-service-icon%403x.png","type":"promote_service"},{"name":"Offers","image_url":"https://images-staging.jkadvantage.co.in/campaign_purpose/offer-icon%403x.png","type":"offers"},{"name":"More","type":"more","image_url":"https://images-staging.jkadvantage.co.in/campaign_purpose/more.png"}]

class Grow_more_model {
  bool _success;
  String _message;
  List<Data> _data;

  bool get success => _success;
  String get message => _message;
  List<Data> get data => _data;

  Grow_more_model({
      bool success, 
      String message, 
      List<Data> data}){
    _success = success;
    _message = message;
    _data = data;
}

  Grow_more_model.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "Tyre Purchase Due"
/// image_url : "https://images-staging.jkadvantage.co.in/campaign_purpose/promote-tyre-purchase-icon%403x.png"
/// type : "tyre_purchase_due"

class Data {
  String _name;
  String _imageUrl;
  String _type;

  String get name => _name;
  String get imageUrl => _imageUrl;
  String get type => _type;

  Data({
      String name, 
      String imageUrl, 
      String type}){
    _name = name;
    _imageUrl = imageUrl;
    _type = type;
}

  Data.fromJson(dynamic json) {
    _name = json["name"];
    _imageUrl = json["image_url"];
    _type = json["type"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["image_url"] = _imageUrl;
    map["type"] = _type;
    return map;
  }

}