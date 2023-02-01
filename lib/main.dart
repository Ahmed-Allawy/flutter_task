// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers, override_on_non_overriding_member
// @dart=2.8
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tast/view/home.dart';
import 'package:tast/view/slider.dart';
import 'package:tast/view_model/data_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
