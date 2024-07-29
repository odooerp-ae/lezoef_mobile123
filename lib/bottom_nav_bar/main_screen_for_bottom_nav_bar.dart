
import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/open_orders_screen/done_screen.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/open_orders_screen/open_orders_screen.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/open_orders_screen/work_in_progress.dart';
import 'package:lezof_auto_repair_mobile_app/bottom_nav_bar/bottom_nav_bar_work_progress.dart';

class UserSideMainScreen extends StatefulWidget {
  const UserSideMainScreen( {Key? key, }) : super(key: key);

  @override
  State<UserSideMainScreen> createState() => _UserSideMainScreenState();
}

class _UserSideMainScreenState extends State<UserSideMainScreen> {
  bool selected = false;
  static const List<Widget> _widgetOptions = <Widget>[
    OpenOrdersScreen(),
   WorkInProgress(),
  DoneScreen(),
  ];
  void _ontapedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SuperBottomNavigationBar(
        onSelected: (index) {
          _ontapedItem(index);
        },
        items:  [
          SuperBottomNavigationBarItem(
            selectedIcon: "OPEN",
            selectedIcon1: "WIP",
            selectedIcon2: "WIP",
            text: "\nVehicle Received"
          ),
          SuperBottomNavigationBarItem(
            selectedIcon: "WIP",
            selectedIcon1: "WIP",
            selectedIcon2: "WIP",
            text: "\nWork in progress"
          ),
          SuperBottomNavigationBarItem(
            selectedIcon: "WIP",
            selectedIcon1: "WIP",
            selectedIcon2: "DONE",
            text: "\nVehicle is ready"
          ),
        ],
      ),
    );
  }
}