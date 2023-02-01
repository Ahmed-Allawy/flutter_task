// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CourseInfo extends StatelessWidget {
  String courseName;
  String courseDate;
  String courseAddress;
  CourseInfo(
      {required this.courseAddress,
      required this.courseDate,
      required this.courseName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(courseName),
          Text(courseDate),
          Text(courseAddress)
        ],
      ),
    );
  }
}
