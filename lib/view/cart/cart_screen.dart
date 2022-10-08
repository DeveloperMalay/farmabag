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
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Text(
            "Your bag",
            style: TextStyle(
              color: Color.fromARGB(255, 93, 90, 241),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 14.0),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit Bag',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
            )
          ],
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          const CartCard(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text('Total'),
              trailing: Text(
                '\$50.98',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
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
