import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/view/cart/components/cart_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
          const Center(
            child: Text(
              "Your cart",
              style: TextStyle(
                  color: Color.fromARGB(255, 93, 90, 241),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 630,
            width: 200,
            child: CartCard(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            width: 150,
            height: 50,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0),
              color: const Color.fromARGB(255, 93, 90, 241),
              child: Text(
                'Proceed to Check Out',
                style: TextStyle(color: whiteColor),
              ),
              onPressed: () {},
            ),
          )
        ]),
      ),
    );
  }
}
