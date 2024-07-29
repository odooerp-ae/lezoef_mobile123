
import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';

class AppUtils {
  onBoardingWidget({isTrue, image, context, title, detail,height}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.1),
          SizedBox(height: 300,
            child: Center(child: Image.asset(image,))),
         const   SizedBox(
            height: 30,
          ),
          SizedBox(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AbeeZee"),
                ),
              ],
            ),
          ),
          
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              detail,
              style: const TextStyle(
                  color: grey,
                  fontSize: 18,fontWeight: FontWeight.w400,
                  fontFamily: "AbeeZee"),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
  
  registerButton(
      {onTap,
      context,
      radius,
      buttonColor,
      text,
      textColor,
      borderColor,
      width}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.058,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                radius,
              ),
            ),
            border: Border.all(color: borderColor ?? Colors.white, width: 1),
            color: buttonColor ?? Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: textColor, fontFamily: "AbeeZee"),
            ),
          ),
        ),
      ),
    );
  }
}