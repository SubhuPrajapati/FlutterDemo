import 'package:flutter_test_app/model/error/error_model.dart';

/// user : {"id":2482,"image_url":"http://images-staging.jkadvantage.co.in/profile/file-1567751524495.png","sap_id":"222111","uuid":"2c4417d2-6593-4c51-bf7f-7d4e686c90e0","owner_name":"Taral Shah","is_login_first_time":false,"type":"dealer","dealer_type":"steel wheels","member_id":null,"customer_class":"sw","access_level":"area","senderId":"LoMoSo","sms_credit":55297,"google_my_business_link":"https://search.google.com/local/writereview?placeid=ChIJKb7X2vaEXjkRxO7hw4qNCrw","google_my_business_rating_link":"https://search.google.com/local/writereview?placeid=ChIJKb7X2vaEXjkRxO7hw4qNCrw","permissions":["CREATE_POSTER","OFFTAKE_AND_POINTS","SMS_REPORT","DOWNLOAD_POSTER","CAMPAIGN","CUSTOMER_MANAGEMENT","WARRANTY","POINT_EARN_REPORT","MARKETING_COUPON_REDEEM_REPORT","ADD_CUSTOMER","BLOCK_LIST","ON_BOARDING_PAGE","VISIT_HISTORY","PRIMARY_POINTS_REDEMPTION","MERCHANDISE_CATALOGUE","REDEEM_MARKETING_COUPON","ORDER_HISTORY","PROFILE","WARRANTY_REGISTRATION","CUSTOMER_LIST","INVITE_BRANCH/SUB_DEALER","ABOUT_PROGRAMME","CREATE_CAMPAIGN","BUY_SMS","ACCOUNT","REDEEM_MARKETING_DISCOUNT_COUPON","WARRANTY_CHECK","WHATS_NEW","CHECK_ELIGIBILITY_FOR_WARRANTY","CAMPAIGN_HISTORY","GET_BANNER","REDEMPTION_CATALOGUE","CATALOGUE","SETTINGS","POINTS_DASHBOARD","MANAGE_GROUP","NOTIFICATION_PREFERENCE","SPECIAL_ENGAGEMENT","MERCHANDISE_WALLET","VIEW_SENDER_ID","WARRANTY_CLAIM_REGISTRATION","WARRANTY_REPORT","DOWNLOAD_SCORECARD","ADD_CUSTOMER_VISIT","EMAIL_PREFERENCE","WARRANTY_REPLACEMENT","DEALER_NEW_DASHBOARD","TRADE_SCHEME","CONTACT_US","SCHEDULE_CAMPAIGN","WARRANTY_CATALOGUE","CUSTOMER_DASHBOARD"]}
/// accessToken : "e2cef23e30232c504c240ad7335d9e656b122d50"
/// accessTokenExpiresAt : "2061-11-01T08:24:16.053Z"
/// refreshToken : "5b0ddb051fd526d9f4cf91b4f01d62d610343030"
/// refreshTokenExpiresAt : "2061-11-01T08:24:16.053Z"
/// token : "e2cef23e30232c504c240ad7335d9e656b122d50"
/// videoURL : "https://images-staging.jkadvantage.co.in/others/JKAdvantage.mp4"

class LoginModel {
  User _user;
  String _accessToken;
  String _accessTokenExpiresAt;
  String _refreshToken;
  String _refreshTokenExpiresAt;
  String _token;
  String _videoURL;
  List<Error_model> errorModel;

  User get user => _user;
  String get accessToken => _accessToken;
  String get accessTokenExpiresAt => _accessTokenExpiresAt;
  String get refreshToken => _refreshToken;
  String get refreshTokenExpiresAt => _refreshTokenExpiresAt;
  String get token => _token;
  String get videoURL => _videoURL;
  List<Error_model> get error => errorModel;
  LoginModel({
      User user, 
      String accessToken, 
      String accessTokenExpiresAt, 
      String refreshToken, 
      String refreshTokenExpiresAt, 
      String token, 
      String videoURL,List<Error_model> error}){
    _user = user;
    _accessToken = accessToken;
    _accessTokenExpiresAt = accessTokenExpiresAt;
    _refreshToken = refreshToken;
    _refreshTokenExpiresAt = refreshTokenExpiresAt;
    _token = token;
    _videoURL = videoURL;
    errorModel = error;
}

  LoginModel.fromJson(dynamic json) {
    _user = json["user"] != null ? User.fromJson(json["user"]) : null;


    _accessToken = json["accessToken"];
    _accessTokenExpiresAt = json["accessTokenExpiresAt"];
    _refreshToken = json["refreshToken"];
    _refreshTokenExpiresAt = json["refreshTokenExpiresAt"];
    _token = json["token"];
    _videoURL = json["videoURL"];
    if (json["error"] != null) {
      errorModel = [];
      json["error"].forEach((v) {
        errorModel.add(Error_model.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_user != null) {
      map["user"] = _user.toJson();
    }
    map["accessToken"] = _accessToken;
    map["accessTokenExpiresAt"] = _accessTokenExpiresAt;
    map["refreshToken"] = _refreshToken;
    map["refreshTokenExpiresAt"] = _refreshTokenExpiresAt;
    map["token"] = _token;
    map["videoURL"] = _videoURL;
    if (errorModel != null) {
      map["error"] = errorModel.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2482
/// image_url : "http://images-staging.jkadvantage.co.in/profile/file-1567751524495.png"
/// sap_id : "222111"
/// uuid : "2c4417d2-6593-4c51-bf7f-7d4e686c90e0"
/// owner_name : "Taral Shah"
/// is_login_first_time : false
/// type : "dealer"
/// dealer_type : "steel wheels"
/// member_id : null
/// customer_class : "sw"
/// access_level : "area"
/// senderId : "LoMoSo"
/// sms_credit : 55297
/// google_my_business_link : "https://search.google.com/local/writereview?placeid=ChIJKb7X2vaEXjkRxO7hw4qNCrw"
/// google_my_business_rating_link : "https://search.google.com/local/writereview?placeid=ChIJKb7X2vaEXjkRxO7hw4qNCrw"
/// permissions : ["CREATE_POSTER","OFFTAKE_AND_POINTS","SMS_REPORT","DOWNLOAD_POSTER","CAMPAIGN","CUSTOMER_MANAGEMENT","WARRANTY","POINT_EARN_REPORT","MARKETING_COUPON_REDEEM_REPORT","ADD_CUSTOMER","BLOCK_LIST","ON_BOARDING_PAGE","VISIT_HISTORY","PRIMARY_POINTS_REDEMPTION","MERCHANDISE_CATALOGUE","REDEEM_MARKETING_COUPON","ORDER_HISTORY","PROFILE","WARRANTY_REGISTRATION","CUSTOMER_LIST","INVITE_BRANCH/SUB_DEALER","ABOUT_PROGRAMME","CREATE_CAMPAIGN","BUY_SMS","ACCOUNT","REDEEM_MARKETING_DISCOUNT_COUPON","WARRANTY_CHECK","WHATS_NEW","CHECK_ELIGIBILITY_FOR_WARRANTY","CAMPAIGN_HISTORY","GET_BANNER","REDEMPTION_CATALOGUE","CATALOGUE","SETTINGS","POINTS_DASHBOARD","MANAGE_GROUP","NOTIFICATION_PREFERENCE","SPECIAL_ENGAGEMENT","MERCHANDISE_WALLET","VIEW_SENDER_ID","WARRANTY_CLAIM_REGISTRATION","WARRANTY_REPORT","DOWNLOAD_SCORECARD","ADD_CUSTOMER_VISIT","EMAIL_PREFERENCE","WARRANTY_REPLACEMENT","DEALER_NEW_DASHBOARD","TRADE_SCHEME","CONTACT_US","SCHEDULE_CAMPAIGN","WARRANTY_CATALOGUE","CUSTOMER_DASHBOARD"]

class User {
  int _id;
  String _imageUrl;
  String _sapId;
  String _uuid;
  String _ownerName;
  bool _isLoginFirstTime;
  String _type;
  String _dealerType;
  dynamic _memberId;
  String _customerClass;
  String _accessLevel;
  String _senderId;
  int _smsCredit;
  String _googleMyBusinessLink;
  String _googleMyBusinessRatingLink;
  List<String> _permissions;

  int get id => _id;
  String get imageUrl => _imageUrl;
  String get sapId => _sapId;
  String get uuid => _uuid;
  String get ownerName => _ownerName;
  bool get isLoginFirstTime => _isLoginFirstTime;
  String get type => _type;
  String get dealerType => _dealerType;
  dynamic get memberId => _memberId;
  String get customerClass => _customerClass;
  String get accessLevel => _accessLevel;
  String get senderId => _senderId;
  int get smsCredit => _smsCredit;
  String get googleMyBusinessLink => _googleMyBusinessLink;
  String get googleMyBusinessRatingLink => _googleMyBusinessRatingLink;
  List<String> get permissions => _permissions;

  User({
      int id, 
      String imageUrl, 
      String sapId, 
      String uuid, 
      String ownerName, 
      bool isLoginFirstTime, 
      String type, 
      String dealerType, 
      dynamic memberId, 
      String customerClass, 
      String accessLevel, 
      String senderId, 
      int smsCredit, 
      String googleMyBusinessLink, 
      String googleMyBusinessRatingLink, 
      List<String> permissions}){
    _id = id;
    _imageUrl = imageUrl;
    _sapId = sapId;
    _uuid = uuid;
    _ownerName = ownerName;
    _isLoginFirstTime = isLoginFirstTime;
    _type = type;
    _dealerType = dealerType;
    _memberId = memberId;
    _customerClass = customerClass;
    _accessLevel = accessLevel;
    _senderId = senderId;
    _smsCredit = smsCredit;
    _googleMyBusinessLink = googleMyBusinessLink;
    _googleMyBusinessRatingLink = googleMyBusinessRatingLink;
    _permissions = permissions;
}

  User.fromJson(dynamic json) {
    _id = json["id"];
    _imageUrl = json["imageUrl"];
    _sapId = json["sapId"];
    _uuid = json["uuid"];
    _ownerName = json["ownerName"];
    _isLoginFirstTime = json["isLoginFirstTime"];
    _type = json["type"];
    _dealerType = json["dealerType"];
    _memberId = json["memberId"];
    _customerClass = json["customerClass"];
    _accessLevel = json["accessLevel"];
    _senderId = json["senderId"];
    _smsCredit = json["smsCredit"];
    _googleMyBusinessLink = json["googleMyBusinessLink"];
    _googleMyBusinessRatingLink = json["googleMyBusinessRatingLink"];
    _permissions = json["permissions"] != null ? json["permissions"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["imageUrl"] = _imageUrl;
    map["sapId"] = _sapId;
    map["uuid"] = _uuid;
    map["ownerName"] = _ownerName;
    map["isLoginFirstTime"] = _isLoginFirstTime;
    map["type"] = _type;
    map["dealerType"] = _dealerType;
    map["memberId"] = _memberId;
    map["customerClass"] = _customerClass;
    map["accessLevel"] = _accessLevel;
    map["senderId"] = _senderId;
    map["smsCredit"] = _smsCredit;
    map["googleMyBusinessLink"] = _googleMyBusinessLink;
    map["googleMyBusinessRatingLink"] = _googleMyBusinessRatingLink;
    map["permissions"] = _permissions;
    return map;
  }

}