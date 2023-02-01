// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers, import_of_legacy_library_into_null_safe, no_logic_in_create_state

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  List<dynamic>? images;
  SliderImage(this.images, {Key? key}) : super(key: key);
  @override
  _MySliderState createState() => _MySliderState(images);
}

class _MySliderState extends State<SliderImage> {
  List<dynamic>? images;
  _MySliderState(this.images);
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
          // Image.network(images![0].toString()),
          // Image.network(images![1].toString()),
          // Image.network(images![2].toString()),
          // Image.network(images![3].toString())
          Image.asset(
            'assets/images/2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          // Image.asset(
          //   'assets/images/2.png',
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          //   height: 200,
          // ),
        ],
      ),
    );
  }
}
