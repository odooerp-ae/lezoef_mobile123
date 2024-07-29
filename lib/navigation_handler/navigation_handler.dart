import 'package:flutter/material.dart';

class Go {
  static void to(BuildContext context, Widget widget) async {
    Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
  }

  static void off(BuildContext context, Widget widget) async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => widget));
  }

  static void offAll(BuildContext context, Widget widget) async {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => widget), (_) => false);
  }

  static void back(BuildContext context) async {
    Navigator.pop(context);
  }
}