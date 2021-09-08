import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';

class IngredientModel extends StatelessWidget {
  const IngredientModel({
    Key? key,
    required this.size,
    required this.color,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final Color? color;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width * 0.15,
          height: size.width * 0.15,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: size.width * 0.17,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
