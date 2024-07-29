import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/onboarding_screens/onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _initData() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Go.off(context, const OnBoardingScreen());
      },
    );
  }

  @override
  void initState() {
    _initData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Center(
              child: Image.asset(
                splash,
                fit: BoxFit.contain,
                scale: 3,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "LEZOF AUTO",
              style: TextStyle(
                  fontFamily: "Outfit",
                  fontSize: 24,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w600,
                  color: white),
            ),
            const Text(
              "Auto Repair and De",
              style: TextStyle(
                  fontFamily: "Outfit",
                  fontSize: 12,
                  letterSpacing: 5,
                  fontWeight: FontWeight.w400,
                  color: white),
            ),
          ],
        ));
  }
}
