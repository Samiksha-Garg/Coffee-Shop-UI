import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class TempQuanRow extends StatelessWidget {
  const TempQuanRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Temperature',
              style: TextStyle(
                color: Color(0xff332724),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 2,
              child: Container(
                height: 30,
                width: size.width * 0.28,
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  indicator: BubbleTabIndicator(
                    tabBarIndicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Color(0xff332724),
                    indicatorHeight: 25,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: <Widget>[
                    Text(
                      'Hot',
                    ),
                    Text(
                      'Cold',
                    ),
                  ],
                  onTap: (index) {},
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Quantity',
              style: TextStyle(
                color: Color(0xff332724),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xffd7ac79),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '2',
                  style: TextStyle(
                    color: Color(0xff332724),
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(
                    0xffd7ac79,
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
