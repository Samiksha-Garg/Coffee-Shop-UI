import 'package:flutter/material.dart';

class NutritionInfo extends StatelessWidget {
  const NutritionInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nutrient Information',
          style: TextStyle(
            color: Color(0xff332724),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        NutrientModel(title: 'Calories', value: '250g'),
        SizedBox(
          height: 10,
        ),
        NutrientModel(title: 'Proteins', value: '10g'),
        SizedBox(
          height: 10,
        ),
        NutrientModel(title: 'Caffeine', value: '150mg'),
      ],
    );
  }
}

class NutrientModel extends StatelessWidget {
  const NutrientModel({Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Text(
        value,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff332724),
          fontSize: 18,
        ),
      )
    ]);
  }
}
