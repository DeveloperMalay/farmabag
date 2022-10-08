import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/view/home.dart';
import 'package:pharmabag/view/signup/subscreen/buyer_screen.dart';
import 'package:pharmabag/view/signup/subscreen/seller_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 40,
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Home();
                      }));
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ]),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 2,
                          color: primaryColor.withOpacity(0.1),
                        ),
                      ],
                      color: const Color.fromARGB(255, 227, 227, 255),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor:
                          const Color.fromARGB(255, 93, 90, 241),
                      indicator: BoxDecoration(
                        color: const Color.fromARGB(255, 93, 90, 241),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      tabs: const [
                        Tab(
                          text: "Seller",
                        ),
                        Tab(
                          text: "Buyer",
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      SellerScreen(),
                      BuyerScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
