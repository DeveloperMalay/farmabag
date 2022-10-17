import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
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
                    children: [],
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
