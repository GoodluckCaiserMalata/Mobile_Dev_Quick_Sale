import 'package:flutter/material.dart';
import 'package:quick_sale/content_screens%20/Discover.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home extends StatefulWidget {
  static const String id = 'home';
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();

    _check_status().then((status) {
      if (status) {
        _navigate_home();
      } else {
        _navigate_discover();
      }
    });
  }

  Future<bool> _check_status() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigate_home() {
    Navigator.pushNamed(context, discover_Screen.id);
  }

  void _navigate_discover() {
    Navigator.pushNamed(context, discover_Screen.id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color(0xff9BA9FF).withOpacity(0.7),
                  Color(0xffED48DC).withOpacity(0.5)
                ])),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: 10.0),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.shoppingCart,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0)),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Quick Sale",
                      style: TextStyle(
                          fontFamily: "MartelSans-Black",
                          fontSize: 40.0,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Buy.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'MartelSans-Black'),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "Exchange.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "MartelSans-Black"),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "Sell",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'MartelSans-Black'),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
