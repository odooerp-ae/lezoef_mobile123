import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';

class InventryScreen extends StatefulWidget {
  const InventryScreen({super.key});

  @override
  State<InventryScreen> createState() => _InventryScreenState();
}

class _InventryScreenState extends State<InventryScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          surfaceTintColor: white,
          backgroundColor: white,
          toolbarHeight: 80,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Inventory",
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
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 40, right: 10, left: 10),
          child: Column(children: [
            Material(
              elevation: 10,
              shadowColor: black,
              color: white,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20, left: 10, right: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    createOrders,
                                    scale: 5,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Purchase Order",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Row(
                                children: [
                                  Image.asset(
                                    readyOrders,
                                    scale: 5,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Stock In",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Row(
                                children: [
                                  Image.asset(
                                    time,
                                    scale: 2,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Part Approval",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Row(
                                children: [
                                  Image.asset(
                                    sale,
                                    scale: 5,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Counter Sale",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left:0.0, right: 10),
              child: Center(
                child: Container(
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.1),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ), //BoxShadow
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.54,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Material(
                          elevation: 10,
                          shadowColor: black,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 45,
                            decoration: BoxDecoration(
                                color: lightGrey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                    width: 1, color: lightGrey.withOpacity(0.2))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
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
                                        hintText: "Search Part",
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        )));
  }
}
