import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/view/account/account_screen.dart';
import 'package:pharmabag/view/cart/cart_screen.dart';
import 'package:pharmabag/view/help/help_screen.dart';
import 'package:pharmabag/view/home/home_screen.dart';

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
              icon: Icon(Icons.help),
              text: "Help",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Account",
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
              text: "Cart",
            ),
          ]),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          HelpScreen(),
          AccountScreen(),
          CartScreen()
        ]),
      ),
    );
  }
}
