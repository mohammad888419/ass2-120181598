import 'package:flutter/material.dart';
import 'package:hw_mohamed/orientation_hw.dart';

import 'hw_mohamed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HW',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  OrientationHw(),
    );
  }
}

