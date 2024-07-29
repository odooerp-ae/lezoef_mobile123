import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/choose_parts.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/choose_service.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/invoice_screen.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/tabbar_widget.dart';
class PrepareInvoice extends StatefulWidget {
  const PrepareInvoice({super.key});
  @override
  State<PrepareInvoice> createState() => _PrepareInvoiceState();
}
class _PrepareInvoiceState extends State<PrepareInvoice> {
  bool toggleValue = false;
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          surfaceTintColor: white,
          backgroundColor: white,
          toolbarHeight: 100,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Prepare Invoice",
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                "Reset",
                style: TextStyle(
                    color: primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'JosefinSans'),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: Column(children: [
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(25),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Personal Info",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: primary,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  const Text(
                                    "Asif",
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  const Text(
                                    "+92 3068207500",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  const Text(
                                    "Johndoe@gmail.com",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Vehicle Info",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: primary,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  const Text(
                                    "AVANTI Changaan Petrol",
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  const Text(
                                    "DDF",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  const Text(
                                    "Odoo Meter : kms",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 1120,
                      child: DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ButtonsTabBar(
                                height: 50,
                              
                               // borderWidth: 10,
                                elevation: 3,
                                contentPadding: const EdgeInsets.all(10),
                                unselectedBorderColor: white,
                                borderColor: primary,
                                backgroundColor: primary,
                                unselectedBackgroundColor: white,
                                radius: 30,
                                unselectedLabelStyle: const TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "JosefinSans"),
                                labelStyle: const TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "JosefinSans"),
                                tabs: const [
                                  Tab(
                                    text: "Choose From Packages",
                                  ),
                                  Tab(
                                    text: "Maintenance Contract",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Services",
                                                style: TextStyle(
                                                    color: primary,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "JosefinSans"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right:10.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                   Go.to(context, const ChooseService());
                                                  },
                                                  child: Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        color: primary,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5)),
                                                    child: const Center(
                                                        child: Icon(
                                                      Icons.add,
                                                      color: white,
                                                      size: 25,
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Insurance",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "JosefinSans"),
                                              ),
                                              Transform.scale(scaleX: 0.9,scaleY: 0.8,
                                                child: Switch.adaptive(
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                    activeColor: white,
                                                    inactiveThumbColor: white,
                                                    activeTrackColor: primary,
                                                    inactiveTrackColor: lightGrey,
                                                    trackOutlineColor:
                                                        const MaterialStatePropertyAll(
                                                            white),
                                                    value: toggleValue,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        toggleValue = value;
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Apply Discount to All",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "JosefinSans"),
                                              ),
                                              Transform.scale(scaleX: 0.9,scaleY: 0.8,
                                                child: Switch(
                                                    activeColor: white,
                                                    inactiveThumbColor: white,
                                                    activeTrackColor: primary,
                                                    inactiveTrackColor: lightGrey,
                                                    trackOutlineColor:
                                                        const MaterialStatePropertyAll(
                                                            white),
                                                    value: toggleValue,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        toggleValue = value;
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: lightGrey.withOpacity(0.5),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Break Drum Inspection",
                                                        style: TextStyle(
                                                            color: primary,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                "JosefinSans"),
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        width: 25,
                                                        decoration: BoxDecoration(
                                                            color: primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: const Center(
                                                            child: Icon(
                                                          Icons.remove,
                                                          color: white,
                                                          size: 25,
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 20,),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Discount Rs",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Discount %",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "QTY",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Rate",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Total",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border.all(
                                                                      width: 1,
                                                                      color: lightGrey
                                                                          .withOpacity(
                                                                              0.5))),
                                                              child: const Row(
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "0.00",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                black,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "JosefinSans",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: lightGrey.withOpacity(0.5),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Break Drum Inspection",
                                                        style: TextStyle(
                                                            color: primary,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                "JosefinSans"),
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        width: 25,
                                                        decoration: BoxDecoration(
                                                            color: primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: const Center(
                                                            child: Icon(
                                                          Icons.remove,
                                                          color: white,
                                                          size: 25,
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 20,),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Discount Rs",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Discount %",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "QTY",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                        
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Rate",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Total",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.2),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border.all(
                                                                      width: 1,
                                                                      color: lightGrey
                                                                          .withOpacity(
                                                                              0.5))),
                                                              child: const Row(
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "0.00",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                black,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Parts",
                                                style: TextStyle(
                                                    color: primary,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "JosefinSans"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right:10.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                      Go.to(context, const ChooseParts());
                                                  },
                                                  child: Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        color: primary,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5)),
                                                    child: const Center(
                                                        child: Icon(
                                                      Icons.add,
                                                      color: white,
                                                      size: 25,
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: lightGrey.withOpacity(0.5),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Break Drum Inspection",
                                                        style: TextStyle(
                                                            color: primary,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                "JosefinSans"),
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        width: 25,
                                                        decoration: BoxDecoration(
                                                            color: primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: const Center(
                                                            child: Icon(
                                                          Icons.remove,
                                                          color: white,
                                                          size: 25,
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 20,),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Discount Rs",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Discount %",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "QTY",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Rate",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              black)),
                                                              child: const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                grey,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "JosefinSans",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Total",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: black),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.010,
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.20,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border.all(
                                                                      width: 1,
                                                                      color: lightGrey
                                                                          .withOpacity(
                                                                              0.5))),
                                                              child: const Row(
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "0.00",
                                                                        hintStyle: TextStyle(
                                                                            color:
                                                                                black,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                "Gabarito",
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                        border:
                                                                            InputBorder.none,
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Center(
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
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Images",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "JosefinSans"),
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: white,
                                    size: 25,
                                  )),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Divider(
                                height: 1,
                                color: lightGrey,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Post Service Images",
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "JosefinSans"),
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: white,
                                    size: 25,
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                      elevation: 10,
                      shadowColor: black,
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 1,
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Services total",
                                        style: TextStyle(
                                            fontFamily: "JosefinSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        height: 40,
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
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Parts total",
                                        style: TextStyle(
                                            fontFamily: "JosefinSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        height: 40,
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
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Discount",
                                        style: TextStyle(
                                            fontFamily: "JosefinSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        height: 40,
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
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Total",
                                        style: TextStyle(
                                            fontFamily: "JosefinSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        height: 40,
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
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Adjustments",
                                        style: TextStyle(
                                            fontFamily: "JosefinSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        height: 40,
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
                                  ],
                                )
                              ])))),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Garage Recommendations",
                                  style: TextStyle(
                                      fontFamily: "JosefinSans",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: black),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.010,
                              ),
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 1,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                          width: 1, color: lightGrey)),
                                  child: const Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          maxLines: 6,
                                          decoration: InputDecoration(
                                            hintText: "",
                                            hintStyle: TextStyle(
                                                color: grey,
                                                fontSize: 14,
                                                fontFamily: "Gabarito",
                                                fontWeight: FontWeight.w400),
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
                            ],
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    elevation: 10,
                    shadowColor: black,
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
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
                                    "Invoice Date",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 7.0),
                                    child: Material(
                                      elevation: 10,
                                      shadowColor: black,
                                      color: white,
                                      borderRadius: BorderRadius.circular(15),
                                      child: const Padding(
                                        padding: EdgeInsets.only(left:10.0, right:10, top:5, bottom:5),
                                        child: Text(
                                          "1 Jan 2024",
                                          style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "JosefinSans"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Notify Customer with SMS Email",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "JosefinSans"),
                                ),
                                Transform.scale(scaleX: 0.9,scaleY: 0.8,
                                  child: Switch(
                                      activeColor: white,
                                      inactiveThumbColor: white,
                                      activeTrackColor: primary,
                                      inactiveTrackColor: lightGrey,
                                      trackOutlineColor:
                                          const MaterialStatePropertyAll(Colors.white),
                                      value: toggleValue,
                                      onChanged: (value) {
                                        setState(() {
                                          toggleValue = value;
                                        });
                                      }),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Request Service Feedback",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "JosefinSans"),
                                ),
                                Transform.scale(scaleX: 0.9,scaleY: 0.8,
                                  child: Switch(
                                      activeColor: white,
                                      inactiveThumbColor: white,
                                      activeTrackColor: primary,
                                      inactiveTrackColor: lightGrey,
                                      trackOutlineColor:
                                          const MaterialStatePropertyAll(white),
                                      value: toggleValue,
                                      onChanged: (value) {
                                        setState(() {
                                          toggleValue = value;
                                        });
                                      }),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  utils.registerButton(
                      context: context,
                      text: "Prepare Invoice",
                      width: MediaQuery.of(context).size.width * 1,
                      radius: 30.0,
                      onTap: () {
                        Go.to(context, const  InvoiceScreen());
                      },
                      textColor: white,
                      buttonColor: primary,
                      borderColor: primary),
                  const SizedBox(
                    height: 30,
                  ),
                ]))));
  }
}
