import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';

class ChooseService extends StatefulWidget {
  const ChooseService({super.key});

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  var utils = AppUtils();
  bool checkBoxValue = false;
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomNavigationBar:  
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: SizedBox(height: 50,
                 child: Center(child: 
               utils.registerButton(
              context: context,
              text: "Add",
              width: MediaQuery.of(context).size.width*1,
              radius: 30.0,
              onTap: () {
            //  Go.to(context, const VerificationScreen());
              },
              textColor: white,
              buttonColor: primary,
              borderColor: primary
                        ),),
               ),
             ),  
        backgroundColor: white,
        appBar: AppBar(
          surfaceTintColor: white,
          backgroundColor: white,
          toolbarHeight: 60,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Choose Services",
            style: TextStyle(
                color: black,
                fontWeight: FontWeight.w600,
                fontFamily: "JosefinSans",
                fontSize: 16),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: black,
              size: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
                Material(
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: black,
                  elevation: 10,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 45,
                      decoration: BoxDecoration(
                          color: lightGrey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(width: 1, color: lightGrey.withOpacity(0.2))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                        const  Icon(
                            Icons.search,
                            color: grey,
                            size: 30,
                          ),
                          
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: TextField(
                                controller: search,
                                decoration: const InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                      color: grey,
                                      fontSize: 14,
                                      fontFamily: "Gabarito",
                                      fontWeight: FontWeight.w200),
                                  border: InputBorder.none,
                                ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "1 Service Selected",
                      style: TextStyle(
                          fontSize: 18,
                          color: grey,
                          fontWeight: FontWeight.w300,
                          fontFamily: "JosefinSans"),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          checkColor: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          side:  BorderSide(
                            color: grey.withOpacity(0.6),
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          })),
                  const Text(
                    "Transmission Overhauling",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                   
                ],
              ),
                const SizedBox(height: 10,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          checkColor: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          side:  BorderSide(
                            color: grey.withOpacity(0.6),
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          })),
                  const Text(
                    "Air Filter Replacement",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                   
                ],
              ),
             
                const SizedBox(height: 10,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          checkColor: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          side:  BorderSide(
                            color: grey.withOpacity(0.6),
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          })),
                  const Text(
                    "Clutch Operation",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  
                ],
              ),
               const SizedBox(height: 10,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          checkColor: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          side:  BorderSide(
                            color: grey.withOpacity(0.6),
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          })),
                  const Text(
                    "Distilled Water Top Up",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  
                ],
              ),
               const SizedBox(height: 10,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          checkColor: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          side:  BorderSide(
                            color: grey.withOpacity(0.6),
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          })),
                  const Text(
                    "Exterior Body Inspection",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  
                ],
              ),
               
               const SizedBox(height: 10,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          checkColor: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                         side:  BorderSide(
                            color: grey.withOpacity(0.6),
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          })),
                  const Text(
                    "Alloy Wheel Damage",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                 
                ],
              ),
               
              
             
            
            ],),
          ),
        ),
    );
  }
}