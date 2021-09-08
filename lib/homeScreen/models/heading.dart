import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome, Nadia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xff332724),
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.webp'),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Let's select the best taste for your \nnext coffee break",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: Colors.grey,
            letterSpacing: 1.1,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
