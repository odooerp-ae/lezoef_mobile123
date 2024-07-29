import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/account_screens/contained_tabbar_view.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
          "Account",
          style: TextStyle(
              color: black,
              fontWeight: FontWeight.w600,
              fontFamily: "JosefinSans",
              fontSize: 20),
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
              Align(
                alignment: Alignment.topLeft,
                child: PhysicalModel(
                  shadowColor: black,
                  color: white,
                  elevation: 7,
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: primary)),
                   // width: MediaQuery.of(context).size.width * 0.43,
                    child: const Padding(
                      padding: EdgeInsets.only(top:10.0, bottom: 10,right: 20, left: 20),
                      child: Text(
                        "Account Daily Book",
                        style: TextStyle(
                            fontSize: 12,
                            color: primary,
                            fontWeight: FontWeight.w400,
                            fontFamily: "JosefinSans"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ContainedTabBarView(
                
                  tabs: const [
                    Text(
                      'EXPENSES',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "JosefinSans",
                          fontSize: 10),
                    ),
                    Text(
                      'PART PURCHASES',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "JosefinSans",
                          fontSize: 10),
                    ),
                    Text(
                      'INCOME',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "JosefinSans",
                          fontSize: 10),
                    ),
                  ],
                  views: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Image.asset(
                          cash,
                          scale: 3.5,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        const Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Your Account has no ',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "JosefinSans",
                                  fontSize: 12),
                            ),
                            Text(
                              'Expenses for this month',
                              style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "JosefinSans",
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        const Text(
                          'Click on Button to Add Expenses',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "JosefinSans",
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(8)),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             
                                      Image.asset(
                        "assets/images/add.png",
                        scale: 3,
                      ),
                              const SizedBox(
                                width: 5,
                              ),
                             const Padding(
                                padding:  EdgeInsets.only(top:3.0),
                                child: Text(
                                  'ADD EXPENSES',
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "JosefinSans",
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "NET",
                            style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontFamily: "JosefinSans"),
                          ),
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(25),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 1,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Income",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Expenses",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Payable",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5,),
                                      Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rs: 15,000.00",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                      Text(
                                        "Rs: 0.00",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                      Text(
                                        "Rs: 0.00 (Credit)",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ],
                                  ),
                                 
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // add part purchase
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Image.asset(
                          cash,
                          scale: 3.5,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                const  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                          'Your Account has no ',
                          style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.w600,
                              fontFamily: "JosefinSans",
                              fontSize: 12),
                        ),
                        Text(
                          ' Part Purchases for this month',
                          style: TextStyle(
                              color: primary,
                              fontWeight: FontWeight.w600,
                              fontFamily: "JosefinSans",
                              fontSize: 12),
                        ),
                      ],
                    ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'Click on Button to Add Part Purchase',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "JosefinSans",
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(8)),
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                Image.asset(
                        "assets/images/add.png",
                        scale: 3,
                      ),
                              const SizedBox(
                                width: 5,
                              ),
                            const  Padding(
                                padding: EdgeInsets.only(top:3.0),
                                child: Text(
                                  'ADD PART PURCHASES',
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "JosefinSans",
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "NET",
                            style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontFamily: "JosefinSans"),
                          ),
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(25),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 1,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Income",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Expenses",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Payable",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 5,),
                                        Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Rs: 15,000.00",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Rs: 0.00",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Rs: 0.00 (Credit)",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Asif",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "09 Feb 2024 05:02 AM",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: PhysicalModel(
                                          shadowColor: black,
                                          color: white,
                                          elevation: 5,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1, color: primary)),
                                           
                                            child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Center(
                                                child: Text(
                                                  "View Payment",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          "JosefinSans"),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        "Rs: 500.0",
                                        style: TextStyle(
                                            color: primary,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Asif",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "09 Feb 2024 05:02 AM",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: PhysicalModel(
                                          shadowColor: black,
                                          color: white,
                                          elevation: 5,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1, color: primary)),
                                            
                                            child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Center(
                                                child: Text(
                                                  "View Payment",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          "JosefinSans"),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        "Rs: 15,000.0",
                                        style: TextStyle(
                                            color: primary,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.14,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "NET",
                            style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontFamily: "JosefinSans"),
                          ),
                        ),
                        Material(
                          elevation: 10,
                          shadowColor: black,
                          color: white,
                          borderRadius: BorderRadius.circular(25),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 1,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Income",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Expenses",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Payable",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                        ],
                                      ),SizedBox(width: 5,),
                                         Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Rs: 15,000.00",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Rs: 0.00",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                          Text(
                                            "Rs: 0.00 (Credit)",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "JosefinSans"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Rs: 15,000.00",
                                        style: TextStyle(
                                            color: primary,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
