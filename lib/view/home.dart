// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tast/view/slider.dart';
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
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                IconButton(onPressed: () {}, icon: Icon(Icons.share))
              ],
              leading: BackButtonIcon(),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(child: SliderImage())));
  }
}
