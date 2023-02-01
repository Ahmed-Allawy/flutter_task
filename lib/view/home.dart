// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, unused_local_variable, override_on_non_overriding_member, avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tast/models/api_data_model.dart';
import 'package:tast/services/api.dart';
import 'package:tast/view/slider.dart';
import 'package:tast/view_model/data_view_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Api data = Api();
    return MaterialApp(
        home: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                IconButton(onPressed: () {}, icon: Icon(Icons.share))
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
                child: FutureBuilder(
                    future: data.fetchUrl(),
                    builder: (Context, snapshot) {
                      Data allData = snapshot.data as Data;
                      print(allData.address);
                      if (snapshot.hasData) {
                        return SliderImage(allData.images);
                      } else {
                        return CircularProgressIndicator();
                      }
                    }))));
  }
}
