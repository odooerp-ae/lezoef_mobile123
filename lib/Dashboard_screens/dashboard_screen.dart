import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/dashboard_flow_screens/inspection_screen.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/dashboard_flow_screens/payment_due_screen.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/more/more_screen.dart';
import 'package:lezof_auto_repair_mobile_app/bottom_nav_bar/main_screen_for_bottom_nav_bar.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/create_repair_order.dart';
import 'package:lezof_auto_repair_mobile_app/create_repair_order/prepare_invoice.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Go.to(context, const MoreScreen());
                    },
                    child: Image.asset(
                      "assets/images/menu.png",
                      scale: 3.5,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/CalendarPlus.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Image.asset(
                        "assets/images/BellSimple.png",
                        scale: 3.5,
                      ),
                    ],
                  )
                ],
              ),
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
            Material(
              borderOnForeground: true,
              elevation: 10,
              color: white,
              shadowColor: black,
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 300,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      mainAxisExtent: 80),
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20, left: 10, right: 10),
                  itemCount: 9,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        index == 0
                            ? Go.to(context, const CreateRepairOrder())
                            : index == 2
                                ? Go.to(context, const PrepareInvoice())
                                : index == 3
                                    ? Go.to(context, const InspectionScreen())
                                    : index == 7
                                        ? Go.to(
                                            context, const PaymentDueScreen())
                                        : index == 4
                                            ? Go.to(context,
                                                const UserSideMainScreen())
                                            : Go.to(context,
                                                const DashboardScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              index == 0
                                  ? createOrders
                                  : index == 1
                                      ? sale
                                      : index == 2
                                          ? quotes
                                          : index == 3
                                              ? inspection
                                              : index == 4
                                                  ? openOrders
                                                  : index == 5
                                                      ? wipOrders
                                                      : index == 6
                                                          ? readyOrders
                                                          : index == 7
                                                              ? payment
                                                              : index == 8
                                                                  ? completedOrders
                                                                  : completedOrders,
                              scale: 3.5,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              index == 0
                                  ? 'Create Repair Order'
                                  : index == 1
                                      ? 'Parts Counter Sale'
                                      : index == 2
                                          ? 'Quotations'
                                          : index == 3
                                              ? 'Inspections'
                                              : index == 4
                                                  ? 'Open Orders'
                                                  : index == 5
                                                      ? 'WIP Orders'
                                                      : index == 6
                                                          ? 'Ready Orders'
                                                          : index == 7
                                                              ? 'Payment Due'
                                                              : index == 8
                                                                  ? 'Completed Orders'
                                                                  : 'Completed Orders',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: black,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Gabarito'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
