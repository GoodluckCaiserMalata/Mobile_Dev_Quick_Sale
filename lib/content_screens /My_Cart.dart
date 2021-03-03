import 'package:flutter/material.dart';

void main() => runApp(my_cart());

class my_cart extends StatelessWidget {
  static const String id = 'my_cart';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 411.0,
                  height: 113,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                        Color(0xff9BA9FF).withOpacity(0.7),
                        Color(0xffED48DC).withOpacity(0.3)
                      ])),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Reusable_position(
              topy: 90,
              lefty: 62,
              name: 'Barely  Strappy Heels',
              price: 'USD 6.25',
              path: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/hills.png"),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Reusable_position(
              topy: 215,
              lefty: 62,
              name: 'Kramig Soft Toy',
              price: "USD 35",
              path: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/Rectangle 50.png"),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Reusable_position(
              topy: 340,
              lefty: 62,
              price: 'USD 150',
              name: 'Logitech  Keyboard',
              path: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/Rectangle 52.png"),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Reusable_position(
              topy: 465,
              lefty: 62,
              name: 'Veldskoen Boot Grey',
              price: 'USD 150',
              path: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/Rectangle 54.png"),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Reusable_position(
              topy: 580,
              lefty: 62,
              name: "Mac Book Air",
              price: "USD 999.9",
              path: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/macbook.jpeg",
                ),
              ),
            ),
            Positioned(
              top: 680,
              left: 62,
              child: Container(
                color: Color(0xff9CA9FD),
                height: 40.0,
                width: 326.0,
                child: OutlineButton(
                  child: Text(
                    "Proceed to checkout",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MartelSans-SemiBold.ttf",
                        wordSpacing: 2),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black45,
              ),
              // backgroundColor: Colors.grey,
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.black45,
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black45,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_sharp,
                  color: Colors.black45,
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black45,
                ),
                label: 'Profile')
          ],
        ),
      ),
    );
  }
}

class Reusable_position extends StatelessWidget {
  Reusable_position({this.topy, this.lefty, this.path, this.name, this.price});
  double topy;
  double lefty;
  Widget path;
  String name;
  String price;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Row(
        children: [
          Container(
            height: 110.0,
            width: 288.0,
            child: Row(
              children: [
                Container(
                  child: path,
                  color: Colors.white,
                  width: 100.0,
                  height: 120.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontFamily: "OpenSans-Regular.ttf",
                                fontWeight: FontWeight.w700,
                                color: Colors.black45),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(price),
                          FlatButton(
                            height: 20.0,
                            minWidth: 49.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Color(0xffF6585F),
                            onPressed: () {},
                            child: Text(
                              "Remove",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      left: lefty,
      top: topy,
    );
  }
}
