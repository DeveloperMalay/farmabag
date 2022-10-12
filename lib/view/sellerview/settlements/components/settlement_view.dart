import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/utils/custom_theme.dart';
import 'package:remixicon/remixicon.dart';

class SettlementView extends StatelessWidget {
  const SettlementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: const Color(0xFFA7BAFF).withOpacity(0.2),
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: CustomTheme.violet.withOpacity(0.1),
                    radius: 15,
                    child: const Icon(Remix.shopping_bag_2_line,
                        size: 15, color: CustomTheme.violet),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Order date",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400)),
                  Text("11/11/2019",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("OD200054579 | 501 | COD",
                      style: TextStyle(
                          color: CustomTheme.violet,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Text("₹4062 | 2% | ₹50 ",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w300)),
                  Text("Net Amt - ₹3607 ",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
