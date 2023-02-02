// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers, import_of_legacy_library_into_null_safe, no_logic_in_create_state, must_be_immutable

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  List<dynamic>? images;
  double screenheight;
  SliderImage(this.images, this.screenheight, {Key? key}) : super(key: key);
  @override
  _MySliderState createState() => _MySliderState(images, screenheight);
}

class _MySliderState extends State<SliderImage> {
  List<dynamic>? images;
  double screenheight;
  _MySliderState(this.images, this.screenheight);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Carousel(
        dotSize: 6.0,
        dotSpacing: 15.0,
        dotPosition: DotPosition.bottomLeft,
        dotBgColor: Colors.transparent,
        images: [
          Image.network(
            images![0],
            fit: BoxFit.fill,
          ),
          Image.network(
            images![1],
            fit: BoxFit.fill,
          ),
          Image.network(
            images![2],
            fit: BoxFit.fill,
          ),
          Image.network(
            images![3],
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
