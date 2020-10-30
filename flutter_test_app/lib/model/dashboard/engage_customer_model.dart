class engage_customer_model {
  List<Data> data;
  String message;
  bool success;

  engage_customer_model({this.data, this.message, this.success});

  factory engage_customer_model.fromJson(Map<String, dynamic> json) {
    return engage_customer_model(
      data: json['`data`'] != null
          ? (json['`data`'] as List).map((i) => Data.fromJson(i)).toList()
          : null,
      message: json['message'],
      success: json['success'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['success'] = this.success;
    if (this.data != null) {
      data['`data`'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int count;
  int engage_customer_shorted_list;
  FilterData filter_data;
  String id;
  String image_url;
  String name;
  String type;

  Data(
      {this.count,
      this.engage_customer_shorted_list,
      this.filter_data,
      this.id,
      this.image_url,
      this.name,
      this.type});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      count: json['count'],
      engage_customer_shorted_list: json['engage_customer_shorted_list'],
      filter_data: json['filter_data'] != null
          ? FilterData.fromJson(json['filter_data'])
          : null,
      id: json['id'] != null ? json['id'] : null,
      image_url: json['image_url'],
      name: json['name'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['engage_customer_shorted_list'] = this.engage_customer_shorted_list;
    data['image_url'] = this.image_url;
    data['name'] = this.name;
    data['type'] = this.type;
    data['id'] = this.id;
    if (this.filter_data != null) {
      data['filter_data'] = this.filter_data.toJson();
    }
    return data;
  }
}

class FilterData {
  String filter_type;
  String last_visit_from_date;
  String last_visit_to_date;

  FilterData(
      {this.filter_type, this.last_visit_from_date, this.last_visit_to_date});

  factory FilterData.fromJson(Map<String, dynamic> json) {
    return FilterData(
      filter_type: json['filter_type'],
      last_visit_from_date: json['last_visit_from_date'],
      last_visit_to_date: json['last_visit_to_date'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['filter_type'] = this.filter_type;
    data['last_visit_from_date'] = this.last_visit_from_date;
    data['last_visit_to_date'] = this.last_visit_to_date;
    return data;
  }
}
