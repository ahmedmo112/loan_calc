import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import 'Txt.dart';
import 'color.dart';

double value = 12000;

class Amount extends StatefulWidget {
  @override
  _AmountState createState() => _AmountState();
}

class _AmountState extends State<Amount> {
    


  @override
  Widget build(BuildContext context) {
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
          Txt(
            text: '\$${value.round().toString()}',
            size: 27,
          )
        ],
      ),
      FlutterSlider(
        values: [value],
        
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
          setState(() {
            value = lowerValue;
          });
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
