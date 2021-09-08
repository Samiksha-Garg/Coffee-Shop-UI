import 'package:flutter/material.dart';
import 'homeScreen/home_screen.dart';
import 'OrderMakingScreen/orderScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Order Coffee',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      // home: Navigation(),
      home: MakeOrder(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selected_index = 0;

  static const List<Widget> _widgets = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];

  void onItemChanged(index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final activeColor = Color(0xff332724);
    final inactiveColor = Colors.grey;
    return Scaffold(
        body: Center(
          child: _widgets[selected_index],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    setState(() {
                      selected_index = 0;
                    });
                  },
                  child: Container(
                    width: size.width * 0.20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.store,
                          color:
                              selected_index == 0 ? activeColor : inactiveColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontFamily: 'Robota',
                            fontWeight: FontWeight.bold,
                            color: selected_index == 0
                                ? activeColor
                                : inactiveColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    setState(() {
                      selected_index = 1;
                    });
                  },
                  child: Container(
                    width: size.width * 0.20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.coffee,
                          color:
                              selected_index == 1 ? activeColor : inactiveColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Orders',
                          style: TextStyle(
                            fontFamily: 'Robota',
                            fontWeight: FontWeight.bold,
                            color: selected_index == 1
                                ? activeColor
                                : inactiveColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    setState(() {
                      selected_index = 2;
                    });
                  },
                  child: Container(
                    width: size.width * 0.20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color:
                              selected_index == 2 ? activeColor : inactiveColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Favorites',
                          style: TextStyle(
                            fontFamily: 'Robota',
                            fontWeight: FontWeight.bold,
                            color: selected_index == 2
                                ? activeColor
                                : inactiveColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    setState(() {
                      selected_index = 3;
                    });
                  },
                  child: Container(
                    width: size.width * 0.20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color:
                              selected_index == 3 ? activeColor : inactiveColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontFamily: 'Robota',
                            fontWeight: FontWeight.bold,
                            color: selected_index == 3
                                ? activeColor
                                : inactiveColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
