import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/Dashboard_screens/dashboard_screen.dart';
import 'package:lezof_auto_repair_mobile_app/account_screens/account_screen.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';
import 'package:lezof_auto_repair_mobile_app/inventry_screen/inventry_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  int bottomSelectedIndex = 0;
  PageController bottomController = PageController(initialPage: 0);
  setBottomPage(index) {
    bottomSelectedIndex = index;
    bottomController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        color: white,
        child: PageView(
          onPageChanged: (val) {
            bottomSelectedIndex = val;
            bottomController.jumpToPage(val);
            setState(() {});
          },
          controller: bottomController,
          children: const [
            DashboardScreen(),
            InventryScreen(),
            Center(
              child: Text('Main Car Module'),
            ),
            Center(),
            AccountScreen()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: Material(
          shadowColor: black,
          elevation: 0,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 70,
            width: 70,
            decoration:
                const BoxDecoration(color: white, shape: BoxShape.circle),
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: FloatingActionButton(
                onPressed: () {
                  bottomController.jumpToPage(2);
                  bottomSelectedIndex = 2;
                  setState(() {});
                },
                backgroundColor: primary,
                child: Center(
                  child: Image.asset(
                    'assets/images/Car.png',
                    scale: 3,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: white,
        elevation: 0,
        borderRadius: BorderRadius.circular(30),
        option: AnimatedBarOptions(
          inkEffect: false,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.Default,
          padding: const EdgeInsets.symmetric(vertical: 20),
          opacity: 0.8,
        ),
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomController.jumpToPage(index);
          setState(() {});
        },
        items: List.generate(bottomIcons.length, (bottomIndex) {
          return (bottomIndex != 2)
              ? BottomBarItem(
                  icon: Image.asset(bottomIcons[bottomIndex]['icon']!,
                      height: 30,
                      width: 30,
                      color: bottomSelectedIndex == bottomIndex
                          ? primary
                          : grey.withOpacity(0.6)),

                  /// this show when animation type liquid
                  backgroundColor: primary,
                  title: Text(
                    maxLines: 2,
                    bottomIcons[bottomIndex]['name']!,
                    style: TextStyle(
                        fontSize: 10,
                        color: bottomSelectedIndex == bottomIndex
                            ? primary
                            : grey.withOpacity(0.6),
                        fontWeight: FontWeight.w600),
                  ),
                  showBadge: false,
                )
              : BottomBarItem(
                  icon: Image.asset(
                    splash,
                    height: 0,
                    width: 0,
                  ),
                  title: const Text(''));
        }),
      ),
    );
  }
}
