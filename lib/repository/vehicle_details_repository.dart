import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lezof_auto_repair_mobile_app/app_utils/app_urls.dart';
import 'package:lezof_auto_repair_mobile_app/models/list_of_repair_orders_model.dart';
import 'package:lezof_auto_repair_mobile_app/service_headers/service_header.dart';
import 'package:dio/dio.dart';
class TransactionsRepository {
  getTranactionsData(String vin) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setHeaders();
    var dio = Dio();
    var parameters = {"params":{
      "vin": "876543234567"
        },};
    var res = await http.get(
      Uri.parse("${AppUrls.baseUrl}${AppUrls.vehicledetailsApi}",),
      headers: headers,
    );
    log(res.body.toString());
    log(res.statusCode.toString());
    final data = json.decode(parameters.toString());

    if (data != null) {
        ListOfRepairOrders faq = ListOfRepairOrders();
      faq = ListOfRepairOrders.fromJson(data);
      return faq;
    } else {
      return null;
    }
  }
}