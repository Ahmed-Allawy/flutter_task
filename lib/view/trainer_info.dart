import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(right: 10),
      // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(textDirection: TextDirection.rtl, children: <Widget>[
            const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/th-4098760468.jpg'),
            ),
            Text(trainerName)
          ]),
          SizedBox(
            height: 5,
          ),
          Text(trainerInfo)
        ],
      ),
    );
  }
}

class trainerImage extends StatelessWidget {
  const trainerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      // color: Colors.red,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Image.asset('assets/images/th-4098760468.jpg'),
    );
  }
}
