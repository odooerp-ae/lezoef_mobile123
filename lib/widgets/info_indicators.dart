// ignore_for_file: file_names

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class InfoIndicators {
  static warnningIndicator(
      BuildContext contextA, String titleText, String bodyText) {
    Flushbar(
      titleText: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: 70,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(contextA).size.width * 0.73,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleText,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        bodyText,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      messageText: const Text(""),
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 4),
      isDismissible: true,
    ).show(contextA);
  }

  static successIndicator(
      BuildContext contextA, String titleText, String bodyText) {
    Flushbar(
      titleText: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  size: 35,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    bodyText == ""
                        ? Container()
                        : const SizedBox(
                            height: 4,
                          ),
                    bodyText == ""
                        ? Container()
                        : Text(
                            bodyText,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      messageText: const Text(""),
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 3),
      isDismissible: true,
    ).show(contextA);
  }

  static infoIndicator(
      BuildContext contextA, String titleText, String bodyText) {
    Flushbar(
      titleText: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  bodyText,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
      messageText: const Text(""),
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 3),
      isDismissible: true,
    ).show(contextA);
  }
}