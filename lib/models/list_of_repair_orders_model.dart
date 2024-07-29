class ListOfRepairOrders {
  String? jsonrpc;
  Null? id;
  Result? result;

  ListOfRepairOrders({this.jsonrpc, this.id, this.result});

  ListOfRepairOrders.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result =
        json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jsonrpc'] = jsonrpc;
    data['id'] = id;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  String? status;
  List<Data>? data;

  Result({this.status, this.data});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? vin;
  String? customerName;
  String? mobile;
  String? mail;
  String? make;
  String? modelName;
  String? modelYear;
  String? addInfo;

  Data(
      {this.vin,
      this.customerName,
      this.mobile,
      this.mail,
      this.make,
      this.modelName,
      this.modelYear,
      this.addInfo});

  Data.fromJson(Map<String, dynamic> json) {
    vin = json['vin'];
    customerName = json['customer_name'];
    mobile = json['mobile'];
    mail = json['mail'];
    make = json['make'];
    modelName = json['model_name'];
    modelYear = json['model_year'];
    addInfo = json['add_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vin'] = vin;
    data['customer_name'] = customerName;
    data['mobile'] = mobile;
    data['mail'] = mail;
    data['make'] = make;
    data['model_name'] = modelName;
    data['model_year'] = modelYear;
    data['add_info'] = addInfo;
    return data;
  }
}