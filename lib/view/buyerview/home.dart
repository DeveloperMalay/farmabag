import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/view/buyerview/account/account_screen.dart';
import 'package:pharmabag/view/buyerview/allcategory/allcategory_screen.dart';
import 'package:pharmabag/view/buyerview/cart/cart_screen.dart';
import 'package:pharmabag/view/buyerview/home/home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: greyColor,
                blurRadius: 6,
                spreadRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.category_rounded),
              text: "Category",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Account",
            ),
            Tab(
              icon: Icon(Icons.shopping_bag),
              text: "Bag",
            ),
          ]),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          Allcategory(),
          AccountScreen(),
          CartScreen()
        ]),
      ),
    );
  }
}
