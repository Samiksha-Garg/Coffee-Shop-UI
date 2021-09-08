import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Caramel \nMacchiato',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Text(
                'Freshly steamed milk with vanilla flavour syrup is marked with expresso and topped with caramel drizzle for an oh-so sweet finish.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.8,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff332724),
                  child: Text(
                    '4.2 / 5',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 60,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/person2.jpg'),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/person3.webp'),
                            ),
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/person1.jpg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '+ 27more',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
