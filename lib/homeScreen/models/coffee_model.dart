import 'package:flutter/material.dart';

class CoffeeModels extends StatelessWidget {
  const CoffeeModels({
    Key? key,
    required this.size,
    required this.shop,
    required this.name,
    required this.description,
    required this.cost,
    required this.img,
  }) : super(key: key);

  final Size size;
  final String shop;
  final String name;
  final String description;
  final String cost;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: size.width * 0.55,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 80,
            child: Column(
              children: [
                Container(
                  width: size.width * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffdcb78b),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          shop,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 35,
                            wordSpacing: 2,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$' + cost,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.55,
                  decoration: BoxDecoration(
                    color: Color(0xff332724),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            img,
            height: 150,
            width: size.width * 0.40,
          ),
        ],
      ),
    );
  }
}
