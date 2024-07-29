import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/app_utils/app_utils.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/main_onboarding_screen/main_onboarding_screen.dart';
import 'package:lezof_auto_repair_mobile_app/navigation_handler/navigation_handler.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var utils = AppUtils();
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 600,
            child: Center(
              child: PageView(
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                scrollDirection: Axis.horizontal,
                children: [
                  utils.onBoardingWidget(
                    title: "Increase your auto repair business > 20%",
                    context: context,
                    image: "assets/images/onboarding_1.png",
                    isTrue: false,
                    detail:
                        "Smart service reminders and booking portal brings more customers.",
        
                  ),
                  utils.onBoardingWidget(
                    title: "More Happy Customers.",
                    context: context,
                    image: "assets/images/onboarding_2.png",
                    isTrue: false,
                    detail:
                        "Improved customer experience makes customers happy",
                  ),
                  utils.onBoardingWidget(
                    title: "Maximize Time and Resources",
                    context: context,
                    image: "assets/images/onboarding_3.png",
                    isTrue: false,
                    detail:
                        "Maximize Time and Resources",
                  ),
                  utils.onBoardingWidget(
                    title: "Anywhere any device.",
                    context: context,
                    image: "assets/images/onboarding_4.png",
                    isTrue: false,
                    detail:
                        "Access on a laptop, desktop or smartphone even from outside the office.",
                  ),
               
                ],
              ),
            ),
            
          ),
         
             SizedBox(height: 12,
               child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: List.generate(
                4,
                (index) => Container(
                  height: currentIndex == index ? 10 : 8,
                  width: currentIndex == index ? 10 : 8,
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == index
                        ? primary
                        : lightGrey,
                  ),
                ),
                           ),
                         ),
             ),
          utils.registerButton(
            context: context,
            text: "Continue",
            width: MediaQuery.of(context).size.width*0.8,
            radius: 8.0,
            onTap: () {
            currentIndex == 4 ? Go.to(context, const MainOnboardingScreen()) : Go.to(context, const MainOnboardingScreen());
            },
            textColor: Colors.white,
            buttonColor: primary,
          ),
        ],
      ),
          
    );
  }
}