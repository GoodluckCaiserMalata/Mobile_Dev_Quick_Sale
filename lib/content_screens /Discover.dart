import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_sale/content_screens%20/Item_Detail.dart';

void main() => runApp(discover_Screen());

class discover_Screen extends StatelessWidget {
  static const String id = 'discover_Screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 270.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Rectangle 1.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 270.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                      Color(0xff9BA9FF).withOpacity(0.7),
                      Color(0xffED48DC).withOpacity(0.5)
                    ])),
              ),
              Positioned(
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 32.0,
                ),
                right: 10.0,
                top: 20.0,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.search),
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontFamily: "MartelSans-Black",
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      small_cards(
                        path: Image(image: AssetImage('assets/Vector.png')),
                      ),
                      Text('clothes'),
                    ],
                  ),
                  Column(
                    children: [
                      small_cards(
                          path: Image(
                        image: AssetImage('assets/Vector (1).png'),
                      )),
                      Text('health'),
                    ],
                  ),
                  Column(
                    children: [
                      small_cards(
                        path: Image(
                          image: AssetImage('assets/Vector (5).png'),
                        ),
                      ),
                      Text('computers'),
                    ],
                  ),
                  Column(
                    children: [
                      small_cards(
                        path: Image(
                          image: AssetImage("assets/Vector (2).png"),
                        ),
                      ),
                      Text('baby'),
                    ],
                  ),
                  Column(
                    children: [
                      small_cards(
                        path: Image(
                          image: AssetImage("assets/Vector (3).png"),
                        ),
                      ),
                      Text('home'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Discover",
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "MartelSans-Black",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Item_detail.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 165.0,
                          child: Image(
                            image: AssetImage('assets/Rectangle 46.png'),
                          ),
                        ),
                        Positioned(
                          child: Icon(
                            Icons.add_circle_outline_sharp,
                            color: Colors.black45,
                          ),
                          right: 10.0,
                          top: 8.0,
                        ),
                        Positioned(
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.black45,
                          ),
                          left: 10.0,
                          top: 8.0,
                        ),
                        Positioned(
                          child: Text("Veldskoen Boot USD 15/="),
                          bottom: 10.0,
                          left: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Item_detail.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 165.0,
                          child: Image(
                            image: AssetImage("assets/download.jpeg"),
                          ),
                        ),
                        Positioned(
                          child: Icon(
                            Icons.add_circle_outline_sharp,
                            color: Colors.black45,
                          ),
                          right: 10.0,
                          top: 8.0,
                        ),
                        Positioned(
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.black45,
                          ),
                          left: 10.0,
                          top: 8.0,
                        ),
                        Positioned(
                          child: Text("Asus 14-Inch USD 1500/="),
                          bottom: 10.0,
                          left: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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

class Reusable_card extends StatelessWidget {
  Reusable_card({this.image_path});

  Widget image_path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(child: image_path),
          ),
          Row(
            children: [
              Text(' lorem ipsum'),
              Icon(Icons.monetization_on_outlined),
              Text("123")
            ],
          )
        ],
      ),
      color: Colors.white24,
    );
  }
}

class small_cards extends StatelessWidget {
  small_cards({
    this.path,
  });

  Widget path;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: path,
      backgroundColor: Colors.white,
    );
  }
}
