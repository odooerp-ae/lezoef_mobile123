import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/open_orders_screen/payment_due_details_screen.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
import 'package:lezof_auto_repair_mobile_app/widgets/progresso.dart';
class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
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
        body: getBody(context));
  }
}
    Widget getBody(BuildContext context) {
  return SingleChildScrollView(
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
                      child: GestureDetector(
                        onTap: () {
                          Go.to(context, const PaymentDueDetailScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius: BorderRadius.circular(40)),
                          child: const  Padding(
                            padding: EdgeInsets.only(left:20.0, right: 20, top: 12, bottom: 12),
                            child: Text(
                              "(3) Vehicle Ready",
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
        const  Divider(height: 1,color: lightGrey,endIndent: 20,indent: 20,
          ),
           
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/User.png",
                    scale: 4,color: primary,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Asif",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "JosefinSans",
                              fontSize: 14),
                        ),
                        Text(
                          "92392794792",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "JosefinSans",
                              fontSize: 14),
                        ),
                      ]),
                ],
              ),
              Row(
        
                children: [
                  Image.asset(
                    car,
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                const  Padding(
                    padding:  EdgeInsets.only(top:10.0),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AVANTI changan PETROL",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: black),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "DDF",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(width:  MediaQuery.of(context).size.width * 0.7 ,
            child: Progresso(progress: 1,
             points: const  [0, 0.25, 0.5,],
            pointRadius: 20,
            progressColor:  primary,
            progressStrokeWidth: 2,
            backgroundStrokeWidth:  2,
            pointInnerRadius: 0,
            pointColor: primary,
            ),
          ),
              SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const Text(
            "Created AT: 09 FEB 2024 06:12 AM",
            style: TextStyle(
                fontFamily: "JosefinSans",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: black),
          ),
          const SizedBox(
            height: 20,
          ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                  shadowColor: black.withOpacity(0.5),
                  elevation: 5,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(phone, scale: 4.5,color: primary,),
                  )),
              const SizedBox(
                width: 10,
              ),
              Material(
                  shadowColor: black.withOpacity(0.5),
                  elevation: 5,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(envelope, scale: 4.5,color: primary,),
                  )),
              const SizedBox(
                width: 10,
              ),
              Material(
                  shadowColor: black.withOpacity(0.5),
                  elevation: 5,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(12)),
                    child:
                        Image.asset("assets/images/whatsappLogo.png", scale: 4.5,color: primary,),
                  ))
            ],
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
          const SizedBox(height: 7,),
          Material(
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
                    Divider(height: 1,color: grey.withOpacity(0.8),),
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
                    const SizedBox(height: 5,),
                      Divider(height: 1,color: grey.withOpacity(0.8),),
                      const SizedBox(height: 5,),
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
           const SizedBox(height: 7,),
          Material(
            shadowColor: black,
            elevation: 10,
            child: Container(
              //height: 80,
              width: MediaQuery.of(context).size.width * 1,
              color: white,
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
                    
                    Divider(height: 1,color: grey.withOpacity(0.8),),
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
                    const SizedBox(height: 5,),
                      Divider(height: 1,color: grey.withOpacity(0.8),),
                      const SizedBox(height: 5,),
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
          )
        ],
      ),
    ),
  );
}
