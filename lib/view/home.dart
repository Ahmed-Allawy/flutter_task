// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tast/view_model/data_view_model.dart';

class Home extends StatelessWidget {
  Future<DataView>? data;
  initState() {
    data = DataView().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("lets begin"),
        ),
      ),
    );
  }
}
