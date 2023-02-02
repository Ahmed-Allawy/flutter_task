// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:tast/handling_time.dart';

import 'constants.dart';

class CourseInfo extends StatelessWidget {
  String courseName;
  String courseDate;
  String courseAddress;
  String interest;
  CourseInfo({
    required this.courseAddress,
    required this.courseDate,
    required this.courseName,
    required this.interest,
  });
  @override
  Widget build(BuildContext context) {
    TimeDate date = TimeDate(courseDate);
    return Container(
      color: containerColor,
      padding: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "$interest #",
            style: TextStyle(color: font2Color, fontSize: font2Size),
          ),
          Text(
            courseName,
            style: TextStyle(
              color: font1Color,
              fontSize: font1Size,
            ),
          ),
          SizedBox(),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Image.asset(
              'assets/images/th-4098760468.jpg',
              width: 25,
              height: 20,
            ),
            Text(
              "${date.dayName()} , ${date.dayNumber()} ${date.monthName()} , ${date.hour()}:${date.minute()} ${date.period()}",
              style: TextStyle(color: font3Color, fontSize: font3Size),
            )
          ]),
          SizedBox(
            height: 5,
          ),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Image.asset(
              'assets/images/img_423602-4140473130.png',
              width: 25,
              height: 20,
            ),
            Text(
              courseAddress,
              style: TextStyle(color: font3Color, fontSize: font3Size),
            )
          ]),
        ],
      ),
    );
  }
}
