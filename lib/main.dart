import 'package:flutter/material.dart';
import 'package:quick_sale/content_screens%20/Discover.dart';
import 'package:quick_sale/content_screens%20/Item_Detail.dart';
import 'package:quick_sale/content_screens%20/My_Cart.dart';
import 'package:quick_sale/screens/home_screen.dart';
import 'package:quick_sale/content_screens /home.dart';

void main() => runApp(QuickSale());

class QuickSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      // initialRoute: home_Screen.id,
      routes: {
        home_Screen.id: (context) => home_Screen(),
        my_cart.id: (context) => my_cart(),
        Item_detail.id: (context) => Item_detail(),
        discover_Screen.id: (context) => discover_Screen(),
      },
    );
  }
}
