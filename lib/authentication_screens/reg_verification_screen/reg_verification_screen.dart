import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/login_screen/login_screen.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_states.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/info_indicators.dart';
class RegVerificationScreen extends StatefulWidget {
  final String email;
  final String firstname;
  final String lastname;
  final String password;
  final String confirmpassword;
  final String companyId;
  const RegVerificationScreen(
      {super.key,
      required this.email,
      required this.firstname,
      required this.lastname,
      required this.password,
      required this.confirmpassword,
      required this.companyId});
  @override
  State<RegVerificationScreen> createState() => _RegVerificationScreenState();
}
class _RegVerificationScreenState extends State<RegVerificationScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController otp = TextEditingController();

  bool visibleCheck = true;
  bool remembered = false;
  AppUtils utils = AppUtils();
  String specialCharacter = "";

  RegistrationBloc? registerBloc;
  AccountVerificationBloc? accountverificationBloc;
  var countDown = 60;
  @override
  void initState() {
    accountverificationBloc = BlocProvider.of<AccountVerificationBloc>(context);
    registerBloc = BlocProvider.of<RegistrationBloc>(context);
    startCountDown();
    super.initState();
  }

  void startCountDown() {
    // ignore: unused_local_variable
    var timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      countDown--;
      if (countDown == 0) {
        timer.cancel();
      }
      setState(() {});
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
    return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}";
  }

  resetverfication() {
    accountverificationBloc
        ?.add(AccountVerificationSubmitted(email: widget.email, otp: otp.text));
  }

  resetresend() {
    registerBloc?.add(RegistrationCodeSubmitted(
      login: widget.email,
      firstname: widget.firstname,
      lastname: widget.lastname,
      password: widget.password,
      confirmpassword: widget.confirmpassword,
      companyId: widget.companyId,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
                builder: (context, state) {
          if (state is AccountVerificationLoadingState) {
            return const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 80,
                child: Center(
                  child: CircularProgressIndicator(color: primary, strokeWidth: 1,),
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
                      onTap: () {
                         resetverfication();
                         },
                      textColor: white,
                      buttonColor: primary,
                      borderColor: primary),
                ),
              ),
            );
          }
        }),
        backgroundColor: white,
        body: BlocListener<AccountVerificationBloc, AccountVerificationState>(
          listener: (context, state) {
            if (state is AccountVerificationSubmittedState) {
              Go.to(
                context,
                const LoginScreen(),
              );
            }
            if (state is AccountVerificationErrorState) {
              InfoIndicators.warnningIndicator(
                  context, "Error", state.message!);
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
                          text: '${widget.email}.',
                          style: const TextStyle(
                              fontFamily: "Gabarito",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                        const TextSpan(
                          text: "\nEnter the code to verify your account. ",
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
                              controller: otp,
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
                    child: BlocListener<RegistrationBloc, RegistrationState>(
                      listener: (context, state) {
                        if (state is RegistrationCodeSubmitted) {}

                        if (state is RegistrationErrorState) {
                          InfoIndicators.warnningIndicator(
                              context, "Error", state.message!);
                        }
                      },
                      child: BlocBuilder<RegistrationBloc, RegistrationState>(
                          builder: (context, state) {
                        if (state is RegistrationLoadingState) {
                          return const Center(
                            child:
                                CircularProgressIndicator(color: Colors.blue),
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
