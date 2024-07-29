import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_strings.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});
  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 20, left: 20),
          child: Column(
            children: List.generate(9, (index) {
              return SizedBox(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                index == 0
                                    ? customer
                                    : index == 1
                                        ? vendor
                                        : index == 2
                                            ? insurancePartner
                                            : index == 3
                                                ? timelogging
                                                : index == 4
                                                    ? inspections
                                                    : index == 5
                                                        ? orderSearch
                                                        : index == 6
                                                            ? setting
                                                            : index == 7
                                                                ? inventory
                                                                : index == 8
                                                                    ? serviceReminders
                                                                    : serviceReminders,
                                scale: 5,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                index == 0
                                    ? customers
                                    : index == 1
                                        ? vendors
                                        : index == 2
                                            ? insurances
                                            : index == 3
                                                ? timeloggings
                                                : index == 4
                                                    ? inspectionss
                                                    : index == 5
                                                        ? ordersSearches
                                                        : index == 6
                                                            ? settings
                                                            : index == 7
                                                                ? inventories
                                                                : index == 8
                                                                    ? serviceReminderss
                                                                    : serviceReminderss,
                                style: const TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "JosefinSans"),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          forwardIcon,
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: lightGrey,
                  )
                ],
              ));
            }),
          ),
        ));
  }
}
