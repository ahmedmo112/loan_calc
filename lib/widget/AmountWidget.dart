import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import 'package:loan_calculator/controller/controller.dart';

import 'Txt.dart';
import 'color.dart';



class Amount extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Controller crt = Get.put(Controller());
    return Container(
        child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Txt(
            text: '  Loan Amount',
            size: 17,
            fontWeight: FontWeight.w600,
          ),
        // GetBuilder<Controller>(
        //   init: crt,
        //   builder: (value) =>Txt(
        //     text: '\$${crt.amount}',
        //     size: 27,
        //   ), 
        //   ) 
        Obx(() => Txt(
             text: '\$${crt.amount.value}',
             size: 27,
           ), ),
        
         ],
      ),
      FlutterSlider(
        values: [crt.amount.value],
        min: 3000,
        max: 20000,
        trackBar: FlutterSliderTrackBar(
          activeTrackBar: BoxDecoration(
            gradient: grad,
            borderRadius: BorderRadius.circular(5),
          ),
          activeTrackBarHeight: 9,
        ),
        onDragging: (handlerIndex, lowerValue, upperValue) {
          crt.amountSlider(lowerValue);
          // controller.amount = lowerValue.obs;
           print(crt.amount);
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Txt(
            text: '-    \$3,000',
            color: grey,
          ),
          Txt(
            text: '\$20,000',
            color: grey,
          )
        ],
      )
    ]));
  }
}
