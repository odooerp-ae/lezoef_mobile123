import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lezof_auto_repair_mobile_app/app_utils/app_urls.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/create_password_model.dart';
import 'package:lezof_auto_repair_mobile_app/service_headers/service_header.dart';
import 'dart:convert';

class ChangePassRepository {
  changePassword(String? email, String? password, String? confirmPassword) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode(
      {"params":{
        "email": email, "password": password, "confirm_password": confirmPassword},}
    );

    var res = await http.post(Uri.parse(AppUrls.baseUrl+ AppUrls.createPasswordApi),
        headers: headers, body: userData);
    log(AppUrls.createPasswordApi.toString());
    log(res.body.toString());
    final data = json.decode(res.body);
    if (data != null) {
      UpdatePassword user = UpdatePassword();

      user = UpdatePassword.fromJson(data);
      return user;
    } else {
      return null;
    }
  }
}