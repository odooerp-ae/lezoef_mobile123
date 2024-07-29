import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lezof_auto_repair_mobile_app/app_utils/app_urls.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/account_verification_model.dart';
import 'package:lezof_auto_repair_mobile_app/service_headers/service_header.dart';
import 'dart:convert';
class AccountVerRepository {
  accountverification(String email, String otp) async {
    ServiceHeader serviceHeader = ServiceHeader();
    Map<String, String> headers = await serviceHeader.setLoginOrLoginHeaders();
    final userData = json.encode(
      {"params":{
         "email": email,"otp": otp,},}
    );
    var res = await http.post(Uri.parse(AppUrls.baseUrl+AppUrls.passwordverificationApi),
        headers: headers, body: userData);
    log(AppUrls.passwordverificationApi.toString());
    log(res.body.toString());
    final data = json.decode(res.body);
    if (data != null) {
      AccountVerificationModel verification = AccountVerificationModel();
      verification = AccountVerificationModel.fromJson(data);
      return verification;
    } else {
      return null;
    }
  }
}