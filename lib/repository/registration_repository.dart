
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lezof_auto_repair_mobile_app/app_utils/app_urls.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/regitration_model.dart';
import 'package:lezof_auto_repair_mobile_app/service_headers/service_header.dart';
import 'dart:convert';
class RegRepository {
  register(String? firstname, lastname, login, password,confirmpassword,companyId,) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode({
      'params':
      {
        "first_name": firstname,
        "last_name": lastname,
        "login" : login,
        "password": password,
        "confirm_password": confirmpassword,
        "company_id" : companyId
      }}
    );
    var res = await http.post(
        Uri.parse(
          AppUrls.baseUrl
          + AppUrls.registerApi, 
        ),
        headers: headers,
        body: userData);
    log(res.body.toString());
     log(res.statusCode.toString());
    final data = json.decode(res.body);
    
    if (data != null) {
      CreateUser register = CreateUser();
     
      register = CreateUser.fromJson(data);
      return register;
    } else {
      return null;
    }
  }


  registerverification(String? firstname, lastname, login, password,confirmpassword,companyId,) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode({
      'params':
      {
        "first_name": firstname,
        "last_name": lastname,
        "login" : login,
        "password": password,
        "confirm_password": confirmpassword,
        "company_id" : companyId
      }}
    );
    var res = await http.post(
        Uri.parse(
          AppUrls.baseUrl
          + AppUrls.registerApi, 
        ),
        headers: headers,
        body: userData);
    log(res.body.toString());
     log(res.statusCode.toString());
    final data = json.decode(res.body);
    
    if (data != null) {
      CreateUser register = CreateUser();
     
      register = CreateUser.fromJson(data);
      return register;
    } else {
      return null;
    }
  }
}
