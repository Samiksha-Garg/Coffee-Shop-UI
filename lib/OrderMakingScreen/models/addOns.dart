import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class extraAddOns extends StatelessWidget {
  const extraAddOns({
    Key? key,
    required this.Space,
    required this.size,
    required this.icon,
    required this.title,
    required this.quantity,
    required this.color,
  }) : super(key: key);

  final Widget Space;
  final Size size;
  final IconData icon;
  final String title;
  final String quantity;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color(0xff332724),
              size: 40,
            ),
            Space,
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          width: 50,
        ),
        Container(
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: Color(0xfff6f6f6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: color,
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
              Text(
                quantity,
                style: TextStyle(
                  color: Color(0xff332724),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffd7ac79),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
