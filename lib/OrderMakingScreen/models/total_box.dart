import 'package:flutter/material.dart';

class TotalBox extends StatelessWidget {
  const TotalBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: TextStyle(
                color: Color(0xff332724),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$9,50',
              style: TextStyle(
                color: Color(0xffd7ac79),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff332724),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Place Order ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
