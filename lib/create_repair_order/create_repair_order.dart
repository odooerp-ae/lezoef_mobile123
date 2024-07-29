import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_states.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/create_repair_item.dart';
import 'package:lezof_auto_repair_mobile_app/repository/vehicle_details_repository.dart';

class CreateRepairOrder extends StatefulWidget {
  const CreateRepairOrder({super.key});

  @override
  State<CreateRepairOrder> createState() => _CreateRepairOrderState();
}

class _CreateRepairOrderState extends State<CreateRepairOrder> {
  var utils = AppUtils();
  bool checkBoxValue = true;
  bool checkboxIndex = false;
  TextEditingController search = TextEditingController();
   
  List<String> items = [
    "First Name",
    "Second Name",
    "Third Name",
    "Fourth Name"
  ];
  List<String> searchedItems = [];
  
  WalletDetailsBloc? walletDetailsBloc;

  @override
  void initState() {
      walletDetailsBloc = WalletDetailsBloc(WalletDetalsInitialState(),TransactionsRepository());
    walletDetailsBloc!.add(GetTransactionDetailsEvent(vin: search.text));
    super.initState();
     setState(() {
      searchedItems = items;
    });
  }

  void filter(String searchText) {
    List<String> results = [];
    
    if (searchText.isEmpty) {
      results = items;
    } else {
      results = items
          .where((element) =>
              element.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }

    setState(() {
      searchedItems = results;
    });
  }

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
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Column(
            children: [
              const Text(
                "Type VIN/License Plate no./Customer Name if not found create new vehicle",
                style: TextStyle(
                    color: grey, fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
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
                          side: const BorderSide(
                            color: lightGrey,
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
                    "By Vehicle Reg No.",
                    style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                ],
              ),
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
                          side: const BorderSide(
                            color: lightGrey,
                            width: 1,
                          ),
                          activeColor: primary,
                          value: checkboxIndex,
                          onChanged: (value) {
                            setState(() {
                              checkboxIndex = value!;
                            });
                          })),
                  const Text(
                    "By Customer Name / Phone Number",
                    style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
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
                            onChanged: (value) {
                              filter(value);
                            },
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
                 BlocBuilder<WalletDetailsBloc, WalletDetailsState>(
                    bloc: walletDetailsBloc,
                    builder: (context, state) {
                      if (state is WalletDetalsLoadingState) {
                        return const Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: CircularProgressIndicator(
                                    color: primary,strokeWidth: 1,)),
                          ],
                        );
                      }
                      if (state is TransactionDetalsSuccessState) {
                        return  ListView.builder(
                           shrinkWrap: true,
                           physics: const NeverScrollableScrollPhysics(),
                           itemCount: state.transactionDetailModel.result!.data!.length,
                           itemBuilder: (context, position) {
                             return TransactionListItem(
                                 position: position,
                                 vehicleTransactions: state
                                     .transactionDetailModel
                                     .result!
                                     .data![position]);
                           },
                         );
                           } else {
                        return Container(color: black,height: 20,);
                      }
                         }
              )
            ],
          ),
        ),
      ),
    );
  }
}
