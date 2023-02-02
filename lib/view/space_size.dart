import 'package:flutter/material.dart';

import 'constants.dart';

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: spaceValue,
          color: Colors.white,
          width: double.infinity,
        ),
        const SizedBox(
          height: 2,
        ),
        Container(
          height: spaceValue,
          color: Colors.white,
          width: double.infinity,
        ),
      ],
    );
  }
}
