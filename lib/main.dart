import 'package:flutter/material.dart';

import 'Screens/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loan Calculator',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

