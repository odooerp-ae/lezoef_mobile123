import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
class AddNewRepairOrder extends StatefulWidget {
  const AddNewRepairOrder({super.key});
  @override
  State<AddNewRepairOrder> createState() => _AddNewRepairOrderState();
}
class _AddNewRepairOrderState extends State<AddNewRepairOrder> {
  TextEditingController addInfo = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController ddf = TextEditingController();
  TextEditingController vin = TextEditingController();
  var utils = AppUtils();
  bool toggleValue = false;
  bool triggerValue = false;
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
          "Create Repair Order",
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
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 20),
          child: Column(
            children: [
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                hash,
                                scale: 3.5,
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.020,
                              ),
                             Expanded(
                                  child: TextField(
                                    controller: ddf,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      hintText: "DDF",
                                      hintStyle: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontFamily: "JosefinSans",
                                          fontWeight: FontWeight.w200),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Divider(
                            height: 1,
                            color: lightGrey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              barcode,
                              scale: 3.5,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.020,
                            ),
                           Expanded(
                                  child: TextField(
                                    controller: vin,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      hintText: "VIN (Chassis Number)",
                                      hintStyle: TextStyle(
                                          color: grey,
                                          fontSize: 14,
                                          fontFamily: "JosefinSans",
                                          fontWeight: FontWeight.w200),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
// second row for personal info
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
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
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Personal Details",
                            style: TextStyle(
                                color: primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "JosefinSans"),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "B2B Customer",
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
                                        const MaterialStatePropertyAll(white),
                                    value: triggerValue,
                                    onChanged: (value) {
                                      setState(() {
                                        triggerValue = value;
                                      });
                                    }),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Divider(
                            height: 1,
                            color: lightGrey,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                              //border: Border.all(width: 1, color: lightGrey)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  user,
                                  scale: 3.5,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: username,
                                    keyboardType: TextInputType.name,
                                    decoration: const InputDecoration(
                                      hintText: "Name",
                                      hintStyle: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontFamily: "JosefinSans",
                                          fontWeight: FontWeight.w200),
                                      border: InputBorder.none,
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
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Divider(
                            height: 1,
                            color: lightGrey,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                              //border: Border.all(width: 1, color: lightGrey)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  phone,
                                  scale: 3.5,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: number,
                                    keyboardType: TextInputType.phone,
                                    decoration: const InputDecoration(
                                      hintText: "+92 3068207500",
                                      hintStyle: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontFamily: "JosefinSans",
                                          fontWeight: FontWeight.w200),
                                      border: InputBorder.none,
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
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Divider(
                            height: 1,
                            color: lightGrey,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                              //border: Border.all(width: 1, color: lightGrey)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  envelope,
                                  scale: 3.5,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: email,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      hintText: "JohnDoe@gmail.com",
                                      hintStyle: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontFamily: "JosefinSans",
                                          fontWeight: FontWeight.w200),
                                      border: InputBorder.none,
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
                      ],
                    ),
                  ),
                ),
              ),
              // vehicle details of the customer
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
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
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Vehicle Details",
                                style: TextStyle(
                                    color: primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "JosefinSans"),
                              ),
                              Text(
                                "View History",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "JosefinSans"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "B2B Customer",
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
                                    thumbColor:    const MaterialStatePropertyAll(white),
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
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Divider(
                            height: 1,
                            color: lightGrey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  shield,
                                  scale: 3.5,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.020,
                                ),
                                const Text(
                                  "Make",
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "JosefinSans"),
                                ),
                              ],
                            ),
                            const Text(
                              "AVANTI",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "JosefinSans"),
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
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  car,
                                  scale: 3.5,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.020,
                                ),
                                const Text(
                                  "Model",
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "JosefinSans"),
                                ),
                              ],
                            ),
                            const Text(
                              "AVANTI Chaangan Petrol",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "JosefinSans"),
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
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  calendar,
                                  scale: 3.5,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.020,
                                ),
                                const Text(
                                  "Model Year",
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "JosefinSans"),
                                ),
                              ],
                            ),
                            const Text(
                              "2029",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "JosefinSans"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // aditional information about the repair
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
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
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Additional Information",
                            style: TextStyle(
                                fontSize: 16,
                                color: primary,
                                fontWeight: FontWeight.w400,
                                fontFamily: "JosefinSans"),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                              //border: Border.all(width: 1, color: lightGrey)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               
                                Expanded(
                                  child: TextField(
                                    controller: addInfo,
                                    decoration: const InputDecoration(
                                      hintText: "Add Info",
                                      hintStyle: TextStyle(
                                          color: grey,
                                          fontSize: 14,
                                          fontFamily: "JosefinSans",
                                          fontWeight: FontWeight.w200),
                                      border: InputBorder.none,
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              utils.registerButton(
                  context: context,
                  text: "Next",
                  width: MediaQuery.of(context).size.width * 1,
                  radius: 30.0,
                  onTap: () {
                  
                  },
                  textColor: white,
                  buttonColor: primary,
                  borderColor: primary),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
