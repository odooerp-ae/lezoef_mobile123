
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lezof_auto_repair_mobile_app/app_utils/app_urls.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/login_model.dart';
import 'package:lezof_auto_repair_mobile_app/service_headers/service_header.dart';
import 'dart:convert';

class LoginRepository {
  login(String? login, password,db,) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode({
      'params':
      {
        "login" : login,
        "password": password,
        "db": db,
      }}
    );

    var res = await http.post(
        Uri.parse(
          AppUrls.baseUrl
          + AppUrls.loginApi, 
        ),
        headers: headers,
        body: userData);
    log(res.body.toString());
     log(res.statusCode.toString());
    final data = json.decode(res.body);
    
    if (data != null) {
      LoginModel register = LoginModel();
      register = LoginModel.fromJson(data);
      return register;
    } else {
      return null;
    }
  }
}
