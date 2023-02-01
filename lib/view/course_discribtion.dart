import 'package:flutter/material.dart';

class DiscribtionCourse extends StatelessWidget {
  String courseInfo;
  DiscribtionCourse({
    Key? key,
    required this.courseInfo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.only(right: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[]));
  }
}
