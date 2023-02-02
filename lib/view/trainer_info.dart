// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

import 'constants.dart';

class Trainer extends StatelessWidget {
  String trainerName;
  String trainerInfo;
  String trainerImage;
  Trainer(
      {Key? key,
      required this.trainerName,
      required this.trainerInfo,
      required this.trainerImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      width: double.infinity,
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/th-4098760468.jpg'),
            ),
            Text(
              trainerName,
              style: const TextStyle(
                  color: font2Color,
                  fontSize: font2Size,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const SizedBox(
            height: 5,
          ),
          Text(
            trainerInfo,
            style: const TextStyle(color: font3Color, fontSize: font3Size),
          )
        ],
      ),
    );
  }
}
