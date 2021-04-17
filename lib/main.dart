import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'loan Calculator',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

