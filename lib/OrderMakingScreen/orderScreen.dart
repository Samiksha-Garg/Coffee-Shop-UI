import 'package:flutter/material.dart';
import 'models/description.dart';
import 'models/information.dart';

class MakeOrder extends StatelessWidget {
  const MakeOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5b4b8),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              DescriptionBox(),
              Expanded(
                child: InformationBox(),
              )
            ],
          ),
          Positioned(
            right: -55,
            top: 150,
            child: Image(
              image: AssetImage(
                'assets/images/pngegg.png',
              ),
              width: 300,
              height: 400,
            ),
          ),
        ],
      ),
    );
  }
}
