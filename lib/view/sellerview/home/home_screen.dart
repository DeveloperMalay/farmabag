import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/utils/custom_theme.dart';
import 'package:pharmabag/view/sellerview/help/help.dart';
import 'package:pharmabag/view/sellerview/home/components/inventry.dart';
import 'package:pharmabag/view/sellerview/home/components/overview_card.dart';
import 'package:remixicon/remixicon.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Remix.menu_2_line,
                  color: CustomTheme.violet,
                ),
              ),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const HelpPage();
                      },
                    ));
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Remix.user_2_fill,
                      color: CustomTheme.violet,
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Total sales this month",
              style: TextStyle(
                  color: CustomTheme.violet,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 10),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "₹9,433",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Last updated 12min ago",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "-12.5%",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Since last month",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: [
              OverViewCard(
                  icon: Remix.shopping_bag_2_line,
                  title: "Pending order",
                  color: greenColor,
                  value: "25",
                  width: MediaQuery.of(context).size.width / 2 - 30),
              OverViewCard(
                  icon: Remix.shopping_bag_2_line,
                  title: "Out of stock",
                  color: Colors.red,
                  value: "5",
                  width: MediaQuery.of(context).size.width / 2 - 30),
              SizedBox(
                height: 10,
                width: MediaQuery.of(context).size.width,
              ),
              OverViewCard(
                  icon: Remix.shopping_bag_2_line,
                  title: "Slow moving",
                  color: Colors.orange,
                  value: "13",
                  width: MediaQuery.of(context).size.width / 2 - 30),
              OverViewCard(
                  icon: Remix.shopping_bag_2_line,
                  title: "Close to expiry",
                  color: CustomTheme.violet,
                  value: "7",
                  width: MediaQuery.of(context).size.width / 2 - 30),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Top selling products",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 10,
          ),
          const HomeInventoryCard()
        ],
      ),
    );
  }
}
