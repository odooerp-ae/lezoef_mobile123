import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/add_new_repair_order.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';

class InspectionScreen extends StatefulWidget {
  const InspectionScreen({super.key});

  @override
  State<InspectionScreen> createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
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
          "Choose Inspection",
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
        actions: const [Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Text("Skip",style: TextStyle(color: primary, fontSize: 14,fontWeight: FontWeight.w500, fontFamily: 'JosefinSans'),),
        )],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20, top: 20),
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
                    child: Column(
                      children: [
                       const Align(alignment: Alignment.topLeft,
                          child:  Text(
                            "Vehicle registration sheet",
                            style: TextStyle(
                                fontSize: 16,
                                color: grey,
                                fontWeight: FontWeight.w400,
                                fontFamily: "JosefinSans"),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                       const  Divider(color: lightGrey,height: 1,),
                        SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                         utils.registerButton(
            context: context,
            text: "Select and Continue",
            width: MediaQuery.of(context).size.width*0.8,
            radius: 30.0,
            onTap: () {
              Go.to(context, const AddNewRepairOrder());
            },
            textColor: white,
            buttonColor: primary,
            borderColor: primary
          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],),
        ),
      ),
    );
  }
}