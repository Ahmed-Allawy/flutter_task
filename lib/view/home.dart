// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, unused_local_variable, override_on_non_overriding_member, avoid_print

import 'package:flutter/material.dart';
import 'package:tast/models/api_data_model.dart';
import 'package:tast/services/api.dart';

import 'package:tast/view/course_info.dart';

import 'package:tast/view/course_price2.dart';
import 'package:tast/view/slider.dart';
import 'package:tast/view/space_size.dart';
import 'package:tast/view/trainer_info.dart';

import 'constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Api data = Api();
    return Scaffold(
        backgroundColor: backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SizedBox(
            // color: Color.fromARGB(255, 0, 0, 0),
            width: double.infinity,
            child: FutureBuilder(
                future: data.fetchUrl(),
                builder: (Context, snapshot) {
                  if (snapshot.hasData) {
                    Data allData = snapshot.data as Data;
                    print("i am here $allData");
                    return Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SliderImage(allData.images, screenHeight),
                              CourseInfo(
                                courseAddress: allData.address!,
                                courseName: allData.reservTypes![0]['name'],
                                courseDate: allData.date!,
                                interest: allData.interest!,
                                screenheight: screenHeight,
                              ),
                              Space(),
                              Trainer(
                                trainerName: allData.trainerName!,
                                trainerInfo: allData.trainerInfo!,
                                trainerImage: allData.trainerImage!,
                              ),
                              Space(),
                              Container(
                                color: containerColor,
                                width: double.infinity,
                                padding: EdgeInsets.only(right: 10),
                                child: const Text(
                                  "عن الدورة ",
                                  style: TextStyle(
                                      backgroundColor: Colors.white,
                                      color: font2Color,
                                      fontSize: font2Size,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Expanded(
                                  child: SingleChildScrollView(
                                // padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  height: screenHeight * 1755 / 2277,
                                  padding: EdgeInsets.only(right: 10),
                                  color: Colors.white,
                                  width: double.infinity,
                                  child: Text(
                                    allData.occasionDetail!,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: font3Color,
                                        fontSize: font3Size),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              )),
                              Space(),
                              PriceTwo(
                                price: allData.reservTypes![0]['price'],
                                screenWidth: screenWidth,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: BeveledRectangleBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.zero)),
                                    backgroundColor: butoonColor,
                                    minimumSize: Size(double.infinity, 50)),
                                onPressed: () {},
                                child: Text(
                                  "قم بالحجز الان",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                      ),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                  // return CircularProgressIndicator();
                })));
  }
}
