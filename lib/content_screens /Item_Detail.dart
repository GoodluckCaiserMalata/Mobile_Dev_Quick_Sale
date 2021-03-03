import 'package:flutter/material.dart';
import 'package:quick_sale/content_screens%20/My_Cart.dart';

void main() => runApp(Item_detail());

class Item_detail extends StatelessWidget {
  static const String id = 'Item_detail';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                        Color(0xff9BA9FF).withOpacity(0.7),
                        Color(0xffED48DC).withOpacity(0.3)
                      ])),
                  height: 211,
                ),
                Expanded(
                  child: Container(
                    height: 520,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Positioned(
                left: 38.0,
                top: 100.0,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 230.0,
                      width: 335.0,
                      child: Image(
                        image: AssetImage("assets/Rectangle 46.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Veldskoen Boot",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "OpenSans-Light.ttf",
                                    wordSpacing: 2,
                                    letterSpacing: 2)),
                            SizedBox(width: 35.0),
                            Text("USD 150/="),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "description",
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontFamily: "MartelSans-SemiBold.ttf",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          height: 98.0,
                          width: 332.0,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and "
                            "typesetting industry. Lorem Ipsum has been the"
                            " industry's standard dummy text ever since the "
                            "1500s, when an unknown printer took a galley of"
                            " type and scrambled it to make a type specimen"
                            " book. It has survived not only five centuries, "
                            "but also the leap into electronic typesetting, "
                            "remaining essentially unchanged.  ",
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "OpenSans-Light.ttf",
                                wordSpacing: 2,
                                letterSpacing: 2),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Tags",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              fontFamily: 'MartelSans-SemiBold.ttf'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      color: Color(0xff9CA9FD),
                      height: 40.0,
                      width: 326.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, my_cart.id);
                        },
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "MartelSans-SemiBold.ttf",
                              wordSpacing: 2),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
