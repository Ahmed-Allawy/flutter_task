// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers, override_on_non_overriding_member
// @dart=2.8
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:tast/view/home.dart';

void main() {
  runApp(
      // DevicePreview(builder: (context) =>
      MyApp()
      // )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
