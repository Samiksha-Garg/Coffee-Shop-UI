import 'package:flutter/material.dart';
import 'temp_quan.dart';
import 'cup_size.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'addOns.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'total_box.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String cupDropdownValue = '1';
    String sizeDropdownValue = 'M';
    final size = MediaQuery.of(context).size;
    Widget Space = SizedBox(
      height: 10,
    );
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ],
                ),
                Space,
                TempQuanRow(size: size),
                Space,
                Divider(),
                Space,
                cupSizePannel(
                  size: size,
                  cupDropdownValue: cupDropdownValue,
                  sizeDropdownValue: sizeDropdownValue,
                ),
                Space,
                Divider(),
                Space,
                extraAddOns(
                  color: Color(0xffd7ac79),
                  Space: Space,
                  size: size,
                  title: 'Sugar',
                  icon: FontAwesome.cube,
                  quantity: '3 cubes',
                ),
                SizedBox(
                  height: 15,
                ),
                extraAddOns(
                  color: Color(0xffd7ac79),
                  Space: Space,
                  size: size,
                  title: 'Ice',
                  icon: FontAwesome.cubes,
                  quantity: '5 cubes',
                ),
                SizedBox(
                  height: 15,
                ),
                extraAddOns(
                  color: Colors.grey,
                  Space: Space,
                  size: size,
                  title: 'Cream',
                  icon: FontAwesome5.ice_cream,
                  quantity: 'No',
                ),
                Space,
                Divider(),
                Space,
                TotalBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
