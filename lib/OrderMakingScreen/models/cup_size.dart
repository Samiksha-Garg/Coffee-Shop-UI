import 'package:flutter/material.dart';

class cupSizePannel extends StatelessWidget {
  const cupSizePannel({
    Key? key,
    required this.size,
    required this.cupDropdownValue,
    required this.sizeDropdownValue,
  }) : super(key: key);

  final Size size;
  final String cupDropdownValue;
  final String sizeDropdownValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Select Cup',
              style: TextStyle(
                color: Color(0xff332724),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: size.width * 0.12,
              height: size.width * 0.06,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Color(0xfff6f6f6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),
                onChanged: (index) {},
                value: cupDropdownValue,
                iconDisabledColor: Color(0xff332724),
                iconEnabledColor: Color(0xff332724),
                iconSize: 20,
                style: TextStyle(color: Color(0xff332724), fontSize: 15),
                items: ['1', '2', '3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              'Select Size',
              style: TextStyle(
                color: Color(0xff332724),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: size.width * 0.12,
              height: size.width * 0.06,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Color(0xfff6f6f6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),
                onChanged: (index) {},
                value: sizeDropdownValue,
                iconDisabledColor: Color(0xff332724),
                iconEnabledColor: Color(0xff332724),
                iconSize: 20,
                style: TextStyle(color: Color(0xff332724), fontSize: 15),
                items: ['S', 'M', 'L']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ],
    );
  }
}
