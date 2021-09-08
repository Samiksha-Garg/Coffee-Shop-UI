import 'package:flutter/material.dart';
import 'ingredientBar.dart';
import 'prepModel.dart';
import 'Nutrients.dart';
import 'placeOrder.dart';

class InformationBox extends StatelessWidget {
  const InformationBox({
    Key? key,
  }) : super(key: key);

  Widget buildBottomSheet(BuildContext context) => PlaceOrder();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreparationModel(),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              IngredientBar(),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              NutritionInfo(),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: buildBottomSheet,
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
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
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
