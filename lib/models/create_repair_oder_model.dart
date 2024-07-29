class CreateRepairOrderModel {
  String? jsonrpc;
  Null? id;
  Result? result;

  CreateRepairOrderModel({this.jsonrpc, this.id, this.result});

  CreateRepairOrderModel.fromJson(Map<String, dynamic> json) {
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
  String? message;
  int? repairOrderId;

  Result({this.status, this.message, this.repairOrderId});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    repairOrderId = json['repair_order_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['repair_order_id'] = repairOrderId;
    return data;
  }
}