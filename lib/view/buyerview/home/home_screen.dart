import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/view/buyerview/home/components/allproducts.dart';
import 'package:pharmabag/view/buyerview/home/components/category.dart';
import 'package:pharmabag/view/buyerview/home/components/product.dart';
import 'package:pharmabag/view/buyerview/notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hi Ramesh,',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'retailerId: #12123',
                      style: TextStyle(fontSize: 14, color: greyColor),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 92.0),
                  child: SizedBox(
                    height: 60,
                    width: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              const Color.fromARGB(255, 227, 227, 255),
                          child: IconButton(
                            onPressed: () {},
                            icon: Badge(
                              badgeContent: const Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              child: const Icon(
                                Icons.favorite,
                                size: 30,
                                color: Color.fromARGB(255, 93, 90, 241),
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              const Color.fromARGB(255, 227, 227, 255),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const NotificationScreen();
                              }));
                            },
                            icon: Badge(
                              badgeContent: const Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              child: const Icon(
                                Icons.notifications,
                                size: 30,
                                color: Color.fromARGB(255, 93, 90, 241),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: 200,
                height: 50,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 6,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Color.fromARGB(255, 93, 90, 241),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 93, 90, 241),
                            fontSize: 18,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 93, 90, 241),
                              width: 1.0,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.camera_enhance,
                            color: Color.fromARGB(255, 93, 90, 241),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 1,
                      child: CupertinoButton(
                        padding: const EdgeInsets.all(0),
                        color: const Color.fromARGB(255, 227, 227, 255),
                        child: const Center(
                            child: Icon(
                          Icons.tune_outlined,
                          color: Color.fromARGB(255, 93, 90, 241),
                          size: 30,
                        )),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Offers",
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Color.fromARGB(255, 93, 90, 241),
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color.fromARGB(255, 93, 90, 241),
                        )
                      ],
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.network(
                  'https://image.shutterstock.com/image-vector/vector-medical-banner-pharmacy-template-260nw-2043622106.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shop by Categories",
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 20,
                      ),
                    ),
                  ]),
            ),
            const CategoryCard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot Selling in your area",
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const AllProducts();
                            }));
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Color.fromARGB(255, 93, 90, 241),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color.fromARGB(255, 93, 90, 241),
                        )
                      ],
                    ),
                  ]),
            ),
            const ProductCard(),
          ],
        ),
      ),
    );
  }
}
