import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/authentication_screens/login_screen/login_screen.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/info_indicators.dart';

class CreateNewPassword extends StatefulWidget {
   final String email;
  const CreateNewPassword({super.key, required this.email});
  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool visibleCheck = true;
  bool remembered = false;
  AppUtils utils = AppUtils();
  String specialCharacter = "";
  ChangePassBloc? changePasswBloc;
  
    resetPassword() {
    if (password.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Password", "Please enter text in New  Password field");
    } else if (confirmpassword.text.isEmpty) {
      InfoIndicators.warnningIndicator(
          context, "Password", "Please enter text in retype Password field");
    } else if (password.text != confirmpassword.text) {
      InfoIndicators.warnningIndicator(
          context, "Password", "retype and new password not matched");
    } else {
      changePasswBloc?.add(ChangePassSubmitted(
          password: password.text,
          confirmpassword: confirmpassword.text,
          email: widget.email));
    }
  }

  @override
  void dispose() {
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }

  @override
  void initState() {
    changePasswBloc = BlocProvider.of<ChangePassBloc>(context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:  
           BlocBuilder<ChangePassBloc, ChangePassState>(
                        builder: (context, state) {
                      if (state is ChangePassLoadingState) {
                        return const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SizedBox(height: 80,
                            child:  Center(
                              child: CircularProgressIndicator(color:primary,strokeWidth: 1,),
                            ),
                          ),
                        );
                      } else {
                        return  Padding(
               padding: const EdgeInsets.all(20.0),
               child:  SizedBox(height: 80,
                 child: Center(child: 
                  utils.registerButton(
                  context: context,
                  text: "Reset Password",
                  width: MediaQuery.of(context).size.width * 1,
                  radius: 30.0,
                  onTap: () => resetPassword() ,
                  textColor: white,
                  buttonColor: primary,
                  borderColor: primary),),
               ),
             );}}), 
      backgroundColor: white,
      body:  BlocListener<ChangePassBloc, ChangePassState>(
            listener: (context, state) {
              if (state is ChangePassSubmittedState) {
                password.text = "";
                confirmpassword.text = "";
               return Go.offAll(context, const LoginScreen());
              }
              if (state is ChangePassErrorState) {
                InfoIndicators.warnningIndicator(
                    context, "Error", state.message.toString());
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
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Center(
                child: Text(
                  "Create New Password",
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
                  "Please enter and confirm your new password. You will need to login after you reset.",
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
                           onChanged: (value) {
                                  final validCharacters = RegExp(
                                      // ignore: valid_regexps
                                      r'^[a-zA-Z][0-9]{7}$');
                                  setState(() {
                                    if (validCharacters.hasMatch(value)) {
                                      specialCharacter =
                                          "Must be 8 chars";

                                      log("matched ::   $value");
                                    } else {
                                      specialCharacter = "";
                                    }
                                  });
                                },
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
                                  fontSize: 14, color: red),
                            ),
                          )
                        : const SizedBox(
                            height: 20,
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
                height: MediaQuery.of(context).size.height * 0.4,
              ),
             
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
