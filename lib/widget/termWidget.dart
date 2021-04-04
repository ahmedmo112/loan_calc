import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:loan_calculator/widget/Txt.dart';
import 'package:loan_calculator/widget/color.dart';

double term = 24;

class Term extends StatefulWidget {
  @override
  _TermState createState() => _TermState();
}

class _TermState extends State<Term> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(children: [
              Txt(
                text: 'Loan Term',
                size: 17,
                fontWeight: FontWeight.w600,
              ),
              Txt(
                text: '  (Months)',
                size: 12,
                color: Colors.white30,
              ),
            ]),
          ),
          Txt(
            text: '${term.round().toString()}',
            size: 27,
          )
        ],
      ),
      FlutterSlider(
        values: [term],
        min: 12,
        max: 60,
        step: FlutterSliderStep(step: 12),
        trackBar: FlutterSliderTrackBar(
          activeTrackBar: BoxDecoration(
            gradient: grad,
            borderRadius: BorderRadius.circular(5),
          ),
          activeTrackBarHeight: 9,
        ),
        onDragging: (handlerIndex, lowerValue, upperValue) {
          setState(() {
            term = lowerValue;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Txt(
            text: '-    12',
            color: grey,
          ),
          Txt(
            text: '24',
            color: grey,
          ),
          Txt(
            text: '36',
            color: grey,
          ),
          Txt(
            text: '48',
            color: grey,
          ),
          Txt(
            text: '60',
            color: grey,
          )
        ],
      )
    ]));
  }
}
