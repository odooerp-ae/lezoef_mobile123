import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_images.dart';

class CreatedPaymentScreen extends StatefulWidget {
  const CreatedPaymentScreen({super.key});

  @override
  State<CreatedPaymentScreen> createState() => _CreatedPaymentScreenState();
}

class _CreatedPaymentScreenState extends State<CreatedPaymentScreen> {
   TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: white,
      appBar: AppBar(
        surfaceTintColor: white,
        backgroundColor: white,
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: true,
        title: const Padding(
          padding:  EdgeInsets.only(top:15.0),
          child:  Text(
            "Created Order",
            style: TextStyle(
                color: black,
                fontWeight: FontWeight.w600,
                fontFamily: "JosefinSans",
                fontSize: 16),
          ),
        ),
        leading: Padding(
        padding: const  EdgeInsets.only(top:10.0),
          child: GestureDetector(
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Total Due Rs: 0.00",
                  style: TextStyle(
                      fontSize: 14,
                      color: red,
                      fontWeight: FontWeight.w600,
                      fontFamily: "JosefinSans"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Material(
                elevation: 10,
                shadowColor: black,
                borderRadius: BorderRadius.circular(20),
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
                              hintText: "Customer name/phone/reg no.",
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
              const SizedBox(
                height: 20,
              ),
              Material(
                  elevation: 10,
                  shadowColor: black,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 10.0, bottom: 10,right: 20, left:20),
                           child: const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Delivery Delayed 12 Hours",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: grey,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:10.0),
                           child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "#2",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ),
                               
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                     //   Go.to(context, const CreatedPaymentScreen());
                                      },
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: PhysicalModel(
                                          shadowColor: black,
                                          color: Colors.blue,
                                          elevation: 5,
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                               width: MediaQuery.of(context).size.width*0.35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1, color: Colors.blue)),
                                            child: const Center(
                                              child: Text(
                                                "CREATED",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: white,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "JosefinSans"),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                   
                                  ],
                                ),
                               
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Rs: 7,400.00",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "JosefinSans"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         ),
                         SizedBox(
                          width: MediaQuery.of(context).size.width*0.6,
                           child: const  Center(
                             child: Text(
                               "15 hours ago",
                               style: TextStyle(
                                   fontSize: 10,
                                   color: grey,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: "JosefinSans"),
                             ),
                           ),
                         ),
                                const  SizedBox(height: 10,),
                        const Divider(
                          height: 1,
                          color: lightGrey,
                        ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top:10,),
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:12.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset(
                                            customer,
                                            scale: 6.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Asif",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: black,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "JosefinSans"),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "923110948416",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: grey,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "JosefinSans"),
                                              ),
                                            ),
                                          ],
                                        ),
                                       
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                             Padding(
                               padding: const EdgeInsets.only(top:10.0),
                               child: SizedBox(width: 100,
                                 child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                      Image.asset(
                                        pdf,
                                        scale: 3.5,color: red,
                                      ),
                                     const Text(
                                       "Repair order",
                                       style:  TextStyle(
                                           fontSize: 10,
                                           color: grey,
                                           fontWeight: FontWeight.w400,
                                           fontFamily: "JosefinSans"),
                                     ),
                                        
                                       
                                   ],
                                 ),
                               ),
                             ),
                               
                          ],
                        ),
                      
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left:20.0,bottom: 10),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Align(
                                     alignment: Alignment.topLeft,
                                     child: Image.asset(
                                       car,
                                       scale: 4,
                                     ),
                                   ),
                                   const SizedBox(
                                     width: 10,
                                   ),
                                   const Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "AVANTI changan PETROL",
                                         style: TextStyle(
                                             fontSize: 12,
                                             color: black,
                                             fontWeight: FontWeight.w400,
                                             fontFamily: "JosefinSans"),
                                       ),
                                       SizedBox(
                                         height: 10,
                                       ),
                                       Align(
                                         alignment: Alignment.topLeft,
                                         child: Text(
                                           "DDF",
                                           style: TextStyle(
                                               fontSize: 12,
                                               color: black,
                                               fontWeight: FontWeight.w400,
                                               fontFamily: "JosefinSans"),
                                         ),
                                       ),
                                     ],
                                   ),
                                  
                                  
                                 ],
                               ),
                             ),
                               SizedBox(width: 100,
                                 child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                      Image.asset(
                                        pdf,
                                        scale: 3.5,color: Colors.transparent,
                                      ),
                                   // const SizedBox(width: 2,),
                                     const Text(
                                       "Invoice",
                                       style:  TextStyle(
                                           fontSize: 10,
                                          color: Colors.transparent,
                                           fontWeight: FontWeight.w400,
                                           fontFamily: "JosefinSans"),
                                     ),
                                        
                                       
                                   ],
                                 ),
                               ),
                           ],
                         ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Invoice",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.transparent,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  Text(
                    "Created By",
                    style: TextStyle(
                        fontSize: 10,
                        color: grey,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  Text(
                    "Completion Date",
                    style: TextStyle(
                        fontSize: 10,
                        color: grey,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "GP-STOGBA-4",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.transparent,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  Text(
                    "Hassan",
                    style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                  Text(
                    "09 Feb 2024 05:02 AM",
                    style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontFamily: "JosefinSans"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                  elevation: 10,
                  shadowColor: black,
                  borderRadius: BorderRadius.circular(30),
                    child: Container(
                       width: MediaQuery.of(context).size.width * 1,
          
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:  Padding(
                      padding:  EdgeInsets.only(left:10.0, right: MediaQuery.of(context).size.width*0.15, top: 10, bottom: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Row(
                        children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      whatsapp,
                                      scale: 4,
                                    ),
                                  ),
                            
                          const Text(
                                             "Whats App",
                                             style: TextStyle(
                                                 fontSize: 12,
                                                 color: black,
                                                 fontWeight: FontWeight.w400,
                                                 fontFamily: "JosefinSans"),
                                           ),
                        ],
                      ),
                     
                                       Row(
        
                                         children: [
                                           Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      call,
                                      scale: 4,
                                    ),
                                  ),
                                  
                                           const Text(
                                             "Call",
                                             style: TextStyle(
                                                 fontSize: 12,
                                                 color: black,
                                                 fontWeight: FontWeight.w400,
                                                 fontFamily: "JosefinSans"),
                                           ),
                                         ],
                                       ),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                                       const Text(
                                         "SMS",
                                         style: TextStyle(
                                             fontSize: 12,
                                             color: black,
                                             fontWeight: FontWeight.w400,
                                             fontFamily: "JosefinSans"),
                                       ),
                                      
                                      ],),
                    ),
                    ))
            ],
          ),
        ),
      ),
    );
  }
}