// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import 'constants.dart';

class PriceTwo extends StatelessWidget {
  int price;
  double screenWidth;
  PriceTwo({required this.price, required this.screenWidth, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      width: double.infinity,
      padding: const EdgeInsets.only(right: 10),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
        const Text(
          "تكلفة الدورة",
          style: TextStyle(
              color: font2Color,
              fontSize: font2Size,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("SAR ${price / 5}",
                    style: TextStyle(
                      color: font3Color,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text("SAR ${price / 2.5}",
                    style: TextStyle(
                      color: font3Color,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text("SAR ${price / (5 / 3)}",
                    style: TextStyle(
                      color: font3Color,
                    )),
              ],
            ),
            // Container(
            //   width: screenWidth / 2,
            //   height: 30,
            //   color: Colors.red,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("الحجز العادي ",
                    style: TextStyle(
                      color: font3Color,
                    )),
                SizedBox(
                  height: 3,
                ),
                Text("الحجز المميز ",
                    style: TextStyle(
                      color: font3Color,
                    )),
                SizedBox(
                  height: 3,
                ),
                Text("الحجز السريع",
                    style: TextStyle(
                      color: font3Color,
                    )),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
