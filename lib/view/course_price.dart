// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  int price;
  Price({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Text("تكلفة الدورة"),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Text("الحجز العادي "),
            SizedBox(
              width: 250,
            ),
            Text("SAR ${price / 5}"),
          ]),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Text("الحجز المميز "),
            SizedBox(
              width: 250,
            ),
            Text("SAR ${price / 2.5}"),
          ]),
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            Text("الحجز السريع"),
            SizedBox(
              width: 250,
            ),
            Text("SAR ${price / (5 / 3)}"),
          ]),
        ],
      ),
    );
  }
}
