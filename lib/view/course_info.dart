// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CourseInfo extends StatelessWidget {
  String courseName;
  String courseDate;
  String courseAddress;
  String interest;
  CourseInfo(
      {required this.courseAddress,
      required this.courseDate,
      required this.courseName,
      required this.interest});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("$interest #"),
          Text(courseName),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Image.asset(
              'assets/images/th-4098760468.jpg',
              width: 25,
              height: 20,
            ),
            Text(courseDate)
          ]),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Image.asset(
              'assets/images/img_423602-4140473130.png',
              width: 25,
              height: 20,
            ),
            Text(courseAddress)
          ]),
        ],
      ),
    );
  }
}
