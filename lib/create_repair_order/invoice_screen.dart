import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        surfaceTintColor: white,
        backgroundColor: white,
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Invoice",
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
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "INVOICE",
                  style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "JosefinSans",
                      fontSize: 32),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Center(
                          child: Image.asset(
                            splash,
                            color: primary,
                            fit: BoxFit.contain,
                            scale: 5,
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
                            fontSize: 16,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                            color: primary),
                      ),
                      const Text(
                        "Auto Repair and De",
                        style: TextStyle(
                            fontFamily: "Outfit",
                            fontSize: 10,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w400,
                            color: primary),
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "LEZOF AUTO",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sharjah",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "+92 3068207500",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "abc@gmail.com",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: lightGrey,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Customer",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.49,
                      child: const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Vehicle",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: grey),
                            ),
                            Text(
                              "Amount",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: const Text(
                        "Asif9231197979saidahmed@gmail.com",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: black),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.322,
                      child: const Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "AVANTI changan PETROL DDF",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: const Center(
                        child: Text(
                          "648.00",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: lightGrey,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Services",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "QTY",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Rate",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Center(
                        child: Text(
                          "Brake Drum Inspection",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "500.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "500.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Text(
                        "Brake Drum Inspection",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "500.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "500.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: lightGrey,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Parts",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "QTY",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Rate",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Text(
                        "Brake Drum Inspection",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "500.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "500.00",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: lightGrey,
                height: 40,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Summary",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: grey),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: white,
                child: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                      Text(
                        "500.00",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                color: white,
                child: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Grand Total",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                      Text(
                        "500.00",
                        style: TextStyle(
                            fontFamily: "JosefinSans",
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
