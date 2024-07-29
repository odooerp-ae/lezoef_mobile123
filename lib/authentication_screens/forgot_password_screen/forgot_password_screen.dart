import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/verification_screen/verification_screen.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/info_indicators.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}
class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool visibleCheck = true;
  bool remembered = false;
  AppUtils utils = AppUtils();
  String specialCharacter = "";
  late ResetBloc resetBloc;
  @override
  void initState() {
    resetBloc = BlocProvider.of<ResetBloc>(context);
    super.initState();
  }
  reset() {
    if (email.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Email", "Please enter a valid Email Address");
    } else {
      resetBloc.add(ResetSubmitted(email: email.text));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            BlocBuilder<ResetBloc, ResetState>(builder: (context, state) {
          if (state is ResetLoadingState) {
            return const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                  height: 80,
                  child: Center(
                      child: CircularProgressIndicator(
                    color: primary,
                    strokeWidth: 1,
                  ))),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 80,
                child: Center(
                  child: utils.registerButton(
                      context: context,
                      text: "Send Reset Instruction",
                      width: MediaQuery.of(context).size.width * 1,
                      radius: 30.0,
                      onTap: () => reset(),
                      textColor: white,
                      buttonColor: primary,
                      borderColor: primary),
                ),
              ),
            );
          }
        }),
        backgroundColor: white,
        body: BlocListener<ResetBloc, ResetState>(
          listener: (context, state) {
            if (state is ResetSubmittedState) {
              return Go.to(
                  context,
                  VerificationScreen(
                    email: email.text,
                  ));
            }
            if (state is ResetErrorState) {
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
                      "Forgot Password",
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
                  const Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "No worries! Enter your email address below and we will send you a code to reset password.",
                      style: TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: grey),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "E-mail",
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
                      height: 50,
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
                              onChanged: (value) {
                                final validCharacters = RegExp(
                                    r'[a-zA-Z\^$*.\[\]{}()?\-"!@#%&/\,><:;_~`+=' // <-- Notice the escaped symbols
                                    "'" // <-- ' is added to the expression
                                    ']');

                                setState(() {
                                  if (validCharacters.hasMatch(value)) {
                                    specialCharacter =
                                        "Please remove scpecial characters:\ne.g. +,*,&,^,%,\$,#,@, or A-Z)";

                                    log("matched ::   $value");
                                  } else {
                                    specialCharacter = "";
                                  }
                                });
                              },
                              controller: email,
                              decoration: const InputDecoration(
                                hintText: "Enter your email",
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
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
