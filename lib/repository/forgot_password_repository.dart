import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lezof_auto_repair_mobile_app/app_utils/app_urls.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/forgot_password_model.dart';
import 'package:lezof_auto_repair_mobile_app/service_headers/service_header.dart';
import 'dart:convert';
class ResRepository {
  reset(String? email) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode(
      {"params":
      {
        "email": email,
      }
      },
    );
    var res = await http.post(
        Uri.parse(
          AppUrls.baseUrl
          +AppUrls.forgotpasswordApi,
        ),
        headers: headers,
        body: userData);
log(AppUrls.forgotpasswordApi.toString());
    log(res.body.toString());
    final data = json.decode(res.body);
    if (data != null) {
      
      ForgotPasswordModel register = ForgotPasswordModel();
      register = ForgotPasswordModel.fromJson(data);
      return register;
    } else {
      return null;
    }
  }

  resetresend(String email) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode(
      {"params":
      {
        "email": email,
      }
      },
    );

    var res = await http.post(
        Uri.parse(
          AppUrls.baseUrl+
          AppUrls.forgotpasswordApi,
        ),
        headers: headers,
        body: userData);
    log(res.body.toString());
    final data = json.decode(res.body);

    if (data != null) {
      ForgotPasswordModel register = ForgotPasswordModel();

      register = ForgotPasswordModel.fromJson(data);
      return register;
    } else {
      return null;
    }
  }
}