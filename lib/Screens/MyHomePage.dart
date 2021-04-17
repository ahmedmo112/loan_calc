import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_calculator/controller/controller.dart';
import 'package:loan_calculator/widget/AmountWidget.dart';
import 'package:loan_calculator/widget/ScoreWidget.dart';
import 'package:loan_calculator/widget/termWidget.dart';
import 'package:loan_calculator/widget/Txt.dart';
import 'package:loan_calculator/widget/color.dart';

class MyHomePage extends StatelessWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  String payment = '0.00';
  String x = '0.00';

  // void calculate() {
  //   double a = value; //amount
  //   double r = 0.06;
  //   double n = term ;
  //   double p = a * (r / n);

  //   //double p = a / ((pow((1 + r), n) - 1)) / (r * pow((1 + r), n));
  //   setState(() {
  //     String pay = p.toStringAsFixed(2);
  //     payment = pay;
  //   });
  // }

 Controller crt = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hight = MediaQuery.of(context).size.height;
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed:() => crt.incresment()),
      backgroundColor: black,
      body: Column(
        children: [
          Container(
            height: hight * 0.37,
            width: width,
            decoration: BoxDecoration(gradient: grad),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Txt(
                    text: 'Loan Calculator',
                    size: 20.0,
                    fontWeight: FontWeight.w600,
                    color: white,
                  ),
                ),
                Container(
                  height: 160,
                  width: width * 0.85,
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 35),
                  decoration: BoxDecoration(
                      color: black, borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Txt(
                        text: '\$${payment}',
                        color: white,
                        size: 35,
                      ),
                      Txt(
                        text: 'Est. Monthly Payment',
                        color: Colors.white70,
                        size: 13,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt(
                            text: 'Est. Interest Rate',
                            color: grey,
                            size: 12,
                            fontWeight: FontWeight.w600,
                          ),
                       Obx(() =>   Txt(
                            text: '${crt.counter.value}%',
                            color: grey,
                            size: 12,
                            fontWeight: FontWeight.w600,
                          ),
                       )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt(
                              text: 'Total Est. Coast of Loan',
                              color: grey,
                              size: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            Txt(
                              text: '\$12.622.07',
                              color: grey,
                              size: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Amount(),
                  SizedBox(
                    height: 9,
                  ),
                  Term(),
                  SizedBox(
                    height: 9,
                  ),
                  Score()
                ],
              ),
            ),
          ),
          Container(
            width: width,
            height: 80,
            color: black,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: white,
                onPressed: () {
                  // calculate();
                },
                child: Txt(
                  text: 'Start your Application',
                  color: blue2,
                  size: 15,
                  fontWeight: FontWeight.w700,
                )),
          )
        ],
      ),
    );
  }
}
