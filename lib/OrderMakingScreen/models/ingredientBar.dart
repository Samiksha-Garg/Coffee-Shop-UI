import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'IngredientModel.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';

class IngredientBar extends StatelessWidget {
  const IngredientBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const Space = SizedBox(width: 20);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients',
          style: TextStyle(
            color: Color(0xff332724),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IngredientModel(
                size: size,
                color: Colors.lightBlueAccent,
                title: 'Water',
                icon: Entypo.droplet,
              ),
              Space,
              IngredientModel(
                size: size,
                color: Colors.brown,
                title: 'Brewed Espresso',
                icon: FontAwesome5.coffee,
              ),
              Space,
              IngredientModel(
                size: size,
                color: Color(0xfff59596),
                title: 'Sugar',
                icon: FontAwesome.cube,
              ),
              Space,
              IngredientModel(
                size: size,
                color: Color(0xff8fc387),
                title: 'Toffee Nut Syrup',
                icon: RpgAwesome.flower,
              ),
              Space,
              IngredientModel(
                size: size,
                color: Color(0xff37807a),
                title: 'Natural Flavors',
                icon: FontAwesome5.seedling,
              ),
              Space,
              IngredientModel(
                size: size,
                color: Color(0xfff9bc6a),
                title: 'Vanilla Syrup',
                icon: RpgAwesome.flowers,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
