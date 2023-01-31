// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tast/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
