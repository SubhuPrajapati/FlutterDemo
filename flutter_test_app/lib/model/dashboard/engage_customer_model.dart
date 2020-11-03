import 'dart:convert';

engage_customer_model welcomeFromJson(String str) => engage_customer_model.fromJson(json.decode(str));

String welcomeToJson(engage_customer_model data) => json.encode(data.toJson());

class engage_customer_model {
  engage_customer_model({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Datum> data;

  factory engage_customer_model.fromJson(Map<String, dynamic> json) => engage_customer_model(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.name,
    this.imageUrl,
    this.type,
    this.engageCustomerShortedList,
    this.filterData,
    this.count,
    this.id,
  });

  String name;
  String imageUrl;
  String type;
  int engageCustomerShortedList;
  FilterData filterData;
  int count;
  dynamic id;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"] == null ? null : json["name"],
    imageUrl: json["image_url"] == null ? null : json["image_url"],
    type: json["type"] == null ? null : json["type"],
    engageCustomerShortedList: json["engage_customer_shorted_list"] == null ? null : json["engage_customer_shorted_list"],
    filterData: json["filter_data"] == null ? null : FilterData.fromJson(json["filter_data"]),
    count: json["count"] == null ? null : json["count"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "image_url": imageUrl == null ? null : imageUrl,
    "type": type == null ? null : type,
    "engage_customer_shorted_list": engageCustomerShortedList == null ? null : engageCustomerShortedList,
    "filter_data": filterData == null ? null : filterData.toJson(),
    "count": count == null ? null : count,
    "id": id,
  };
}

class FilterData {
  FilterData({
    this.filterType,
    this.lastVisitFromDate,
    this.lastVisitToDate,
  });

  String filterType;
  DateTime lastVisitFromDate;
  DateTime lastVisitToDate;

  factory FilterData.fromJson(Map<String, dynamic> json) => FilterData(
    filterType: json["filter_type"] == null ? null : json["filter_type"],
    lastVisitFromDate: json["last_visit_from_date"] == null ? null : DateTime.parse(json["last_visit_from_date"]),
    lastVisitToDate: json["last_visit_to_date"] == null ? null : DateTime.parse(json["last_visit_to_date"]),
  );

  Map<String, dynamic> toJson() => {
    "filter_type": filterType == null ? null : filterType,
    "last_visit_from_date": lastVisitFromDate == null ? null : lastVisitFromDate.toIso8601String(),
    "last_visit_to_date": lastVisitToDate == null ? null : lastVisitToDate.toIso8601String(),
  };
}
