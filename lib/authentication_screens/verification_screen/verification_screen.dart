import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/create_new_password/create_new_password.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_states.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/info_indicators.dart';

class VerificationScreen extends StatefulWidget {
  final String email;
  const VerificationScreen({super.key, required this.email});
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController otpcode = TextEditingController();
  bool visibleCheck = true;
  bool remembered = false;
  AppUtils utils = AppUtils();
  String specialCharacter = "";
  ResetBloc? resetBloc;
  ResetVerificationBloc? resetverificationBloc;
  var countDown = 60;
  @override
  void initState() {
    resetverificationBloc = BlocProvider.of<ResetVerificationBloc>(context);
    resetBloc = BlocProvider.of<ResetBloc>(context);
    startCountDown();
    super.initState();
  }

  void startCountDown() {
    // ignore: unused_local_variable
    var timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      countDown--;
      if (mounted) {
        if (countDown == 0) {
          timer.cancel();
        }
        setState(() {});
      } else {
      }
    });
  }

  String minutesToHoursMinutes(int? duration) {
    if (duration == null || duration == 0) {
      return "mm:ss";
    }
    int hours = 0;
    int minutes = 0;

    hours = (duration ~/ 60);
    minutes = duration - (hours * 60);

    // int hour = hours;

    return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}";
  }

  resetverfication() {
    resetverificationBloc?.add(
        ResetVerificationSubmitted(email: widget.email, otp: otpcode.text));
  }

  resetresend() {
    resetBloc?.add(ResendcodeSubmitted(
      email: widget.email,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            BlocBuilder<ResetVerificationBloc, ResetVerificationState>(
                builder: (context, state) {
          if (state is ResetVerificationLoadingState) {
            return const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 80,
                child: Center(
                  child: CircularProgressIndicator(
                    color: primary,
                    strokeWidth: 1,
                  ),
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 80,
                child: Center(
                  child: utils.registerButton(
                      context: context,
                      text: "Verify Account",
                      width: MediaQuery.of(context).size.width * 1,
                      radius: 30.0,
                      onTap: () => resetverfication(),
                      textColor: white,
                      buttonColor: primary,
                      borderColor: primary),
                ),
              ),
            );
          }
        }),
        backgroundColor: white,
        body: BlocListener<ResetVerificationBloc, ResetVerificationState>(
          listener: (context, state) {
            if (state is ResetVerificationSubmittedState) {
              return Go.to(
                  context,
                  CreateNewPassword(
                    email: widget.email,
                  ));
            }

            if (state is ResetVerificationErrorState) {
              InfoIndicators.successIndicator(
                  context, "Success", state.message!);
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const Center(
                    child: Text(
                      "Verify Account",
                      style: TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: black),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Code has been send to ',
                      style: const TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: grey),
                      children: [
                        TextSpan(
                          text: "${widget.email}.",
                          style: const TextStyle(
                              fontFamily: "Gabarito",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                        const TextSpan(
                          text: " \nEnter the code to verify your account. ",
                          style: TextStyle(
                              fontFamily: "Gabarito",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: grey),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Enter Code",
                      style: TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: black),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(width: 1, color: lightGrey)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              obscureText: visibleCheck,
                              controller: otpcode,
                              decoration: const InputDecoration(
                                hintText: "4 Digit Code",
                                hintStyle: TextStyle(
                                    color: grey,
                                    fontSize: 14,
                                    fontFamily: "Gabarito",
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: BlocListener<ResetBloc, ResetState>(
                      listener: (context, state) {
                        if (state is ResendcodeSubmitted) {

                        }
                        if (state is ResetErrorState) {
                        }
                      },
                      child: BlocBuilder<ResetBloc, ResetState>(
                          builder: (context, state) {
                        if (state is ResetLoadingState) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: primary,
                              strokeWidth: 1,
                            ),
                          );
                        } else {
                          return Text.rich(
                            TextSpan(
                              text: 'Didn’t Receive Code? ',
                              style: const TextStyle(
                                  fontFamily: "Gabarito",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: grey),
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      if (countDown == 0) {
                                        resetresend();
                                      }
                                    },
                                  text: 'Resend Code',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        countDown == 0 ? Colors.blue : grey,
                                    fontFamily: "Gabarito",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: countDown == 0 ? Colors.blue : grey,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          );
                        }
                      }),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (countDown == 0) {
                        countDown = 60;
                        startCountDown();

                        //Go.back(context);
                      }
                    },
                    child: countDown == 0
                        ? const Text(
                            "Tap on Resend to Get OTP again",
                            style: TextStyle(
                                fontFamily: "Gabarito",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: grey),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Resend Code in",
                                style: TextStyle(
                                    fontFamily: "Gabarito",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: grey),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              GestureDetector(
                                onTap: () {
                                  //  Navigator.pop(context);
                                },
                                child: Text(
                                  minutesToHoursMinutes(countDown),
                                  style: const TextStyle(
                                      fontFamily: "Gabarito",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: grey),
                                ),
                              )
                            ],
                          ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
