import 'package:flutter/material.dart';
import 'models/heading.dart';
import 'models/top_taste_bar.dart';
import 'models/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Heading(),
                SizedBox(
                  height: 30,
                ),
                TasteOfWeek(),
                ExploreBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
