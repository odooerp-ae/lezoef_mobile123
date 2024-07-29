import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/login_screen/login_screen.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/registration_screen/regitration_screen.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
class MainOnboardingScreen extends StatefulWidget {
  const MainOnboardingScreen({super.key});
  @override
  State<MainOnboardingScreen> createState() => _MainOnboardingScreenState();
}
class _MainOnboardingScreenState extends State<MainOnboardingScreen> {
  var utils = AppUtils();
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 105,
                    width: 150,
                    color: primary,
                    child: Image.asset(
                      splash,
                      fit: BoxFit.contain,
                      scale: 2.5,
                    ),
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
                      color: primary),
                ),
                const Text(
                  "Auto Repair and De",
                  style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 12,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w400,
                      color: primary),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        utils.registerButton(
                            context: context,
                            text: "Register",
                            width: MediaQuery.of(context).size.width * 0.4,
                            radius: 30.0,
                            onTap: () {
                             Go.to(context, const RegistrationScreen());
                            },
                            textColor: black,
                            buttonColor: white,
                            borderColor: black),
                        utils.registerButton(
                            context: context,
                            text: "Login",
                            width: MediaQuery.of(context).size.width * 0.4,
                            radius: 30.0,
                            onTap: () {
                              Go.to(context, const LoginScreen());
                            },
                            textColor: white,
                            buttonColor: primary,
                            borderColor: primary),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                        color: lightGrey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            google,
                            fit: BoxFit.contain,
                            scale: 4.5,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Login with Google",
                          style: TextStyle(
                              fontSize: 16,
                              color: black,
                              fontFamily: "AbeeZee"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
