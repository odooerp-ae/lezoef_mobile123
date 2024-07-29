import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_states.dart';
import 'package:lezof_auto_repair_mobile_app/bottom_nav_bar/bottom_navigation_bar.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/info_indicators.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool visibleCheck = true;
  bool remembered = false;
  AppUtils utils = AppUtils();
  String specialCharacter = "";
  late  LoginBloc loginBloc;

      @override
  void initState() {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }
   login() {
       if (email.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Phone Number", "Please enter a valid Phone Number");
    } else if (password.text.isEmpty){
      InfoIndicators.warnningIndicator(
          context, "Phone Number", "Please enter a valid Phone Number");
  }else {
    loginBloc.add(LoginSubmitted(
        password: password.text,
        db:"odooerp-ae-lezof-main-13545026" ,
        login: email.text,
        ));
  }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSubmittedState) {
             return  Go.to(context, BottomNavBar());
            }
            if (state is LoginErrorState) {
              InfoIndicators.warnningIndicator(
                  context, "Error", state.message!);
            }
          },
         child:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    const Center(
                      child: Text(
                        "Login",
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
                                      // ignore: valid_regexps
                                      r'^[a-zA-Z][0-9]{7}$');
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
                    specialCharacter.isNotEmpty
                        ? SizedBox(
                            height: 35,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              // ignore: unnecessary_string_interpolations
                              "$specialCharacter",
                              maxLines: 2,
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          )
                        : const SizedBox(
                            height: 20,
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
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Go.to(context, const ForgotPasswordScreen());
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              decorationThickness: 1,
                              decorationStyle: TextDecorationStyle.solid,
                              fontFamily: "Gabarito",
                              fontSize: 14,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                     BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                    if (state is LoginLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(color: primary,strokeWidth: 1,),
                      );
                    } else {
                      return utils.registerButton(
                        context: context,
                        text: "Login",
                        width: MediaQuery.of(context).size.width * 1,
                        radius: 30.0,
                        onTap: () { 
                          login();
                          },
                        textColor: white,
                        buttonColor: primary,
                        borderColor: primary);
                        }
                  }
                  ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                    ),
                  ],
                ),
                Column(children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or login with",
                      style: TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: grey),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                ])
              ],
            )),
      ),
    )
    );
  }
}
