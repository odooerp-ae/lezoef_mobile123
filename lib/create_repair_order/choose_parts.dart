import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';

class ChooseParts extends StatefulWidget {
  const ChooseParts({super.key});

  @override
  State<ChooseParts> createState() => _ChoosePartsState();
}

class _ChoosePartsState extends State<ChooseParts> {
  var utils = AppUtils();
  bool checkBoxValue = false;
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
             // Go.to(context, const VerificationScreen());
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
          toolbarHeight: 80,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Choose Parts",
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
                padding: const EdgeInsets.only(top: 0.0, left: 20, right: 20, bottom: 20),
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
                          border: Border.all(width: 1, color: lightGrey.withOpacity(0.2)
                          
                          )),
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
                              padding: const EdgeInsets.only(bottom:12.0),
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
                    height: 50,
                  ),
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Name",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: grey,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: const Center(
                                      child: Text(
                                        "Quantity",
                                        style: TextStyle(
                                            color: grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "1 Part Selected",
                      style: TextStyle(
                          fontSize: 18,
                          color: grey,
                          fontWeight: FontWeight.w300,
                          fontFamily: "JosefinSans"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Brake Lamp",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                  width: 1, color: black)),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                   maxLines: 1,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                    hintText: "",
                                                    hintStyle: TextStyle(
                                                        color: grey,
                                                        fontSize: 14,
                                                        fontFamily: "Gabarito",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.scale(
                                          scale: 1.5,
                                          child: Checkbox(
                                              checkColor: white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),

                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Compressor",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                  width: 1, color: black)),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                   maxLines: 1,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                    hintText: "",
                                                    hintStyle: TextStyle(
                                                        color: grey,
                                                        fontSize: 14,
                                                        fontFamily: "Gabarito",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.scale(
                                          scale: 1.5,
                                          child: Checkbox(
                                              checkColor: white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Brake Pad",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                  width: 1, color: black)),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                   maxLines: 1,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                    hintText: "",
                                                    hintStyle: TextStyle(
                                                        color: grey,
                                                        fontSize: 14,
                                                        fontFamily: "Gabarito",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.scale(
                                          scale: 1.5,
                                          child: Checkbox(
                                              checkColor: white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Camshaft Pulley",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                  width: 1, color: black)),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                   maxLines: 1,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                    hintText: "",
                                                    hintStyle: TextStyle(
                                                        color: grey,
                                                        fontSize: 14,
                                                        fontFamily: "Gabarito",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.scale(
                                          scale: 1.5,
                                          child: Checkbox(
                                              checkColor: white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              side: BorderSide(
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Control Sensor",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                  width: 1, color: black)),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                   maxLines: 1,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                    hintText: "",
                                                    hintStyle: TextStyle(
                                                        color: grey,
                                                        fontSize: 14,
                                                        fontFamily: "Gabarito",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.scale(
                                          scale: 1.5,
                                          child: Checkbox(
                                              checkColor: white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Compressor",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                  width: 1, color: black)),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  maxLines: 1,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                    
                                                    hintText: "",
                                                    hintStyle: TextStyle(
                                                        color: grey,
                                                        fontSize: 14,
                                                        fontFamily: "Gabarito",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Transform.scale(
                                          scale: 1.5,
                                          child: Checkbox(
                                              checkColor: white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              side: BorderSide(
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                
                ]))));
  }
}
