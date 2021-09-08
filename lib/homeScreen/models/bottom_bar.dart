import 'package:flutter/material.dart';
import 'bottom_model.dart';

class ExploreBar extends StatelessWidget {
  const ExploreBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Explore nearby',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff332724),
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              ExploreModel(size: size, img: 'assets/images/coffeeImg1.webp'),
              SizedBox(
                width: 20,
              ),
              ExploreModel(size: size, img: 'assets/images/coffeeImg2.jpeg'),
              SizedBox(
                width: 20,
              ),
              ExploreModel(size: size, img: 'assets/images/coffeeImg3.jpg')
            ],
          ),
        )
      ],
    );
  }
}
