// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class PriceTwo extends StatelessWidget {
  int price;
  PriceTwo({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
        const Text("تكلفة الدورة"),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("SAR ${price / 5}"),
                SizedBox(
                  height: 5,
                ),
                Text("SAR ${price / 2.5}"),
                SizedBox(
                  height: 5,
                ),
                Text("SAR ${price / (5 / 3)}"),
              ],
            ),
            SizedBox(
              width: 250,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("الحجز العادي "),
                SizedBox(
                  height: 3,
                ),
                Text("الحجز المميز "),
                SizedBox(
                  height: 3,
                ),
                Text("الحجز السريع"),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
