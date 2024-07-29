import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/reg_verification_screen/reg_verification_screen.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_states.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/info_indicators.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  late RegistrationBloc registerBloc;
  bool visibleCheck = true;
  bool remembered = false;
  AppUtils utils = AppUtils();
  String specialCharacter = "";
  @override
  void initState() {
    registerBloc = BlocProvider.of<RegistrationBloc>(context);
    super.initState();
  }
  registration() {
    if (firstname.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Field is Missing", "Please enter your First name");
    } else if (lastname.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Field is Missing", "Please enter your last name");
    } else if (login.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Field is Missing", "Please enter a valid email address");
    } else if (password.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Field is Missing", "Please enter a valid email address");
    } else if (password.text.isEmpty) {
      InfoIndicators.warnningIndicator(context, "Field is Missing",
          "Please enter a valid password must contain 8 characters");
    } else if (password.text.isEmpty) {
      InfoIndicators.warnningIndicator(context, "Field is Missing",
          "Please enter a valid password must contain 8 characters");
    } else {
      registerBloc.add(RegistrationSubmitted(
        firstname: firstname.text,
        lastname: lastname.text,
        password: password.text,
        confirmpassword: confirmpassword.text,
        login: login.text,
        companyId: 'My Company',
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          if (state is RegistrationSubmittedState) {
           return Go.to(context,  RegVerificationScreen(email: login.text,password: password.text,companyId: 'My Company',confirmpassword: confirmpassword.text,firstname: firstname.text,lastname: lastname.text,));
          }
          if (state is RegistrationErrorState) {
            InfoIndicators.warnningIndicator(context, "Error", state.message!);
          }
        },
        child: Scaffold(
            backgroundColor: white,
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                    "Register",
                    style: TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: black),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "First Name",
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
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.065,
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
                                    controller: firstname,
                                    decoration: const InputDecoration(
                                      hintText: "john",
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
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Last Name",
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
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.065,
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
                                    controller: lastname,
                                    decoration: const InputDecoration(
                                      hintText: "Doe",
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
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
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
                    height: MediaQuery.of(context).size.height * 0.065,
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
                            controller: login,
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
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
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
                    height: MediaQuery.of(context).size.height * 0.065,
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
                            controller: password,
                            decoration: const InputDecoration(
                              hintText: "Enter your password",
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
                        GestureDetector(
                          onTap: () {
                            visibleCheck = !visibleCheck;
                            setState(() {});
                          },
                          child: Icon(
                            visibleCheck == true
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: grey,
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
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "must contain 8 char.",
                    style: TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: grey),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Confirm Password",
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
                    height: MediaQuery.of(context).size.height * 0.065,
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
                            controller: confirmpassword,
                            decoration: const InputDecoration(
                              hintText: "Confirm password",
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
                        GestureDetector(
                          onTap: () {
                            visibleCheck = !visibleCheck;
                            setState(() {});
                          },
                          child: Icon(
                            visibleCheck == true
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: grey,
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
                  height: MediaQuery.of(context).size.height * 0.145,
                ),
                BlocBuilder<RegistrationBloc, RegistrationState>(
                    builder: (context, state) {
                  if (state is RegistrationLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(color: primary,strokeWidth: 1,),
                    );
                  } else {
                    return utils.registerButton(
                        context: context,
                        text: "Create Account",
                        width: MediaQuery.of(context).size.width * 1,
                        radius: 30.0,
                        onTap: () => registration(),
                        textColor: white,
                        buttonColor: primary,
                        borderColor: primary);
                  }
                }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Text.rich(
                  TextSpan(
                    text: 'By continuing, you agree to our',
                    style: TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: black),
                    children: [
                      TextSpan(
                        text: 'Terms of Services\n',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            fontFamily: "Gabarito",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                      TextSpan(text: " and ", style: TextStyle()),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            fontFamily: "Gabarito",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
            ))));
  }
}
