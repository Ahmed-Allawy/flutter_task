// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers, import_of_legacy_library_into_null_safe

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<SliderImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: double.infinity,
      child: Carousel(
        dotSize: 6.0,
        dotSpacing: 15.0,
        dotPosition: DotPosition.bottomCenter,
        images: [
          Image.asset(
            'assets/images/1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          Image.asset(
            'assets/images/2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
        ],
      ),
    );
  }
}
