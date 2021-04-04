import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:loan_calculator/widget/Txt.dart';
import 'package:loan_calculator/widget/color.dart';


double score = 760;

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        children: [
          Expanded(
            child: Row(children: [
              Txt(
                text: 'FICO Credit Score',
                size: 17,
                fontWeight: FontWeight.w600,
              ),
              Icon(
                Icons.info_outline,
                color: Colors.white30,
                size: 17,
              )
            ]),
          ),
          Txt(
            text: '${score.round().toString()}',
            size: 27,
            color: white,
          )
        ],
      ),
      FlutterSlider(
        values: [score],
        min: 579,
        max: 800,
        trackBar: FlutterSliderTrackBar(
          activeTrackBar: BoxDecoration(
            gradient: grad,
            borderRadius: BorderRadius.circular(5),
          ),
          activeTrackBarHeight: 9,
        ),
        onDragging: (handlerIndex, lowerValue, upperValue) {
          setState(() {
            score = lowerValue;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Txt(
            text: '-   <579',
            color: grey,
          ),
          Txt(
            text: '580',
            color: grey,
          ),
          Txt(
            text: '670',
            color: grey,
          ),
          Txt(
            text: '740',
            color: grey,
          ),
          Txt(
            text: '800+',
            color: grey,
          )
        ],
      )
    ]));
  }
}
