import 'package:flutter/material.dart';

class ExploreModel extends StatelessWidget {
  const ExploreModel({Key? key, required this.size, required this.img})
      : super(key: key);

  final size;
  final img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.35,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
