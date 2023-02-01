// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, unused_local_variable, override_on_non_overriding_member, avoid_print

import 'package:flutter/material.dart';
import 'package:tast/models/api_data_model.dart';
import 'package:tast/services/api.dart';
import 'package:tast/view/course_discribtion.dart';
import 'package:tast/view/course_info.dart';
import 'package:tast/view/course_price.dart';
import 'package:tast/view/course_price2.dart';
import 'package:tast/view/slider.dart';
import 'package:tast/view/trainer_info.dart';
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
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
            // color: Color.fromARGB(255, 0, 0, 0),
            child: FutureBuilder(
                future: data.fetchUrl(),
                builder: (Context, snapshot) {
                  if (snapshot.hasData) {
                    Data allData = snapshot.data as Data;
                    print("i am here $allData");
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SliderImage(allData.images),
                          SizedBox(
                            height: 10,
                          ),
                          CourseInfo(
                            courseAddress: allData.address!,
                            courseName: allData.reservTypes![0]['name'],
                            courseDate: allData.date!,
                            interest: allData.interest!,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Trainer(
                            trainerName: allData.trainerName!,
                            trainerInfo: allData.trainerInfo!,
                            trainerImage: allData.trainerImage!,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            child: const Text(
                              "عن الدورة ",
                            ),
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              allData.occasionDetail!,
                              textDirection: TextDirection.rtl,
                            ),
                          )),
                          PriceTwo(
                            price: allData.reservTypes![0]['price'],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero)),
                                backgroundColor:
                                    Color.fromARGB(255, 142, 16, 138),
                                minimumSize: Size(500, 50)),
                            onPressed: () {},
                            child: Text("قم بالحجز الان"),
                          )
                        ]);
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                  // return CircularProgressIndicator();
                })));
  }
}
