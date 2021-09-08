import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'coffee_model.dart';

class TasteOfWeek extends StatelessWidget {
  const TasteOfWeek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Taste of the week',
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
              CoffeeModels(
                size: size,
                shop: "CofeeShop's",
                name: 'Caffé Misto',
                description:
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam.',
                cost: '4.99',
                img: 'assets/images/coffeeCup1.png',
              ),
              SizedBox(
                width: 15,
              ),
              CoffeeModels(
                size: size,
                shop: "BrownHouse's",
                name: 'Caffé Latte',
                description:
                    'Rich, full bodied espresso, filled with bittersweet creamy sauce and steamed.',
                cost: '3.99',
                img: 'assets/images/coffeeCup2.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
