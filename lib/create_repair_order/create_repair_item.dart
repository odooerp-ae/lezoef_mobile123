import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/add_new_repair_order.dart';
import 'package:lezof_auto_repair_mobile_app/models/list_of_repair_orders_model.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
class TransactionListItem extends StatelessWidget {
  final int position;

  final Data vehicleTransactions;
   TransactionListItem(
      {super.key, required this.position, required this.vehicleTransactions});

  @override
  Widget build(BuildContext context) {
      var utils = AppUtils();
    return InkWell(
      child: Column(
        children: [
          const Divider(
            indent: 0,
            endIndent: 0,
            thickness: 1,
            color: Colors.black26,
          ),
          InkWell(
            onTap: () {
            },
         child:  Material(
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
                                   Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        vehicleTransactions.customerName.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "JosefinSans"),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.020,
                                    ),
                                     Text(
                                      vehicleTransactions.vin.toString(),
                                      style:const TextStyle(
                                          color: grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "JosefinSans"),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    utils.registerButton(
                                        context: context,
                                        text: "Add New",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        radius: 30.0,
                                        onTap: () {
                                          Go.to(context,
                                              const AddNewRepairOrder());
                                        },
                                        textColor: white,
                                        buttonColor: primary,
                                        borderColor: primary),
                                  ],
                                ),
                              ),
                            ),
                          ),
          ),
        ],
      ),
    );
  }
}
