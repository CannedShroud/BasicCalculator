import 'package:flutter/material.dart';
import 'mainscreen.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Checulator', home: MainScreen());
  }
}
