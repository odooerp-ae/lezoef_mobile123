import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/open_orders_screen/payment_recieved_screen.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';

class SavePaymentMethod extends StatefulWidget {
  const SavePaymentMethod({super.key});

  @override
  State<SavePaymentMethod> createState() => _SavePaymentMethodState();
}

class _SavePaymentMethodState extends State<SavePaymentMethod> {
   int selectedIndex = 0;

  _onSelected(int index) {
    setState(() => selectedIndex = index);
  }

  AppUtils utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 5, bottom: 5),
          child: SizedBox(
            height: 60,
            child: Center(
              child: utils.registerButton(
                  context: context,
                  text: "Save",
                  width: MediaQuery.of(context).size.width * 1,
                  radius: 30.0,
                  onTap: () {
                 Go.to(context, const PaymentRecievedScreen());
                  },
                  textColor: white,
                  buttonColor: primary,
                  borderColor: primary),
            ),
          ),
        ),
        backgroundColor: white,
        appBar: AppBar(
          surfaceTintColor: white,
          backgroundColor: white,
          toolbarHeight: 70,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Details",
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
          actions: [
            Image.asset(
              "assets/images/ShareNetwork.png",
              scale: 3.5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Image.asset(
              "assets/images/download.png",
              scale: 3.5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                "assets/images/morevertical.png",
                scale: 3.5,
              ),
            ),
          ],
        ),
        body: 
        SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 180,
                    height: 120,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(40)),
                        child: const  Padding(
                          padding: EdgeInsets.only(left:20.0, right: 20, top: 12, bottom: 12),
                          child: Text(
                            "(4) Payment Due",
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "JosefinSans",
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Estimated delivery",
                    style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Date",
                    style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "10 Feb 2024 07:09 AM",
                    style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "15 hours ago",
                    style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: primary),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 1,
            color: lightGrey,
            endIndent: 20,
            indent: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Material(
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 648.00",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Due",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: red),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 648.00",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Material(
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "SERVICES",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: black),
                    ),
                    Divider(
                      height: 1,
                      color: grey.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Brake Drum Inspection",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 1,
                      color: grey.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Brake Drum Inspection",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Material(
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PARTS",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: black),
                    ),
                    Divider(
                      height: 1,
                      color: grey.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Brake Drum Inspection",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 1,
                      color: grey.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Brake Drum Inspection",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: grey),
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
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child:  Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      "Payment Method",
                      style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: black),
                    ),
                  const  SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  Text(
                          "Select Payment Method",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: grey),
                        ),
                      const  SizedBox(
                          height: 10,
                        ),
                      GestureDetector(
                        onTap: () {
                    showDialouge(context);
                        },
                          child: const Icon(
                            Icons.arrow_downward,
                            color: grey,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Payment Date",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10, top: 2, bottom: 2),
                            child: Text(
                              "Feb 9, 2024",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: black),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),

        );
  }
   showDialouge(BuildContext context, {dynamic height, dynamic width}) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  shadowColor: white,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Payment Method",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: black),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: black,
                        ),
                        Padding(
                           padding: const EdgeInsets.only(bottom:20.0, left:15, right: 15),
                            child: Column(
                                children: List.generate(5, (index) {
                                  
                              return Padding(
                                padding: const EdgeInsets.only(top:20.0, left:15, right: 15),
                                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                setState(() {
                                  _onSelected(index);
                            
                                });
                              },                                 
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: selectedIndex == index ?  Colors.black: Colors.transparent,
                                            border: Border.all(
                                              width: 1,
                                              color: black,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                      ),
                                    ),
                                  const  SizedBox(
                                      width: 5,
                                    ),
                                   Text(
                                      index == 0 ? "Cash" : index == 1 ? "Debit Card": index == 2 ? "Internet Banking" : index == 3 ? "Cheque" : index == 4 ? "Credit Card": "Credit Card",
                                      style: const  TextStyle(
                                          fontFamily: "JosefinSans",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: black),
                                    ),
                                  ],
                                ),
                              );
                            }))),
                           
                            const Divider(
                          height: 1,
                          color: black,
                        ),
                    
                          Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      fontFamily: "JosefinSans",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: primary),
                                ),
                              ),
                             const SizedBox(width: 10,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "OK",
                                  style: TextStyle(
                                      fontFamily: "JosefinSans",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: primary),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}


