import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/utils/custom_theme.dart';
import 'package:pharmabag/view/sellerview/order/past_order_view.dart';
import 'package:pharmabag/view/sellerview/order/process_order_view.dart';
import 'package:remixicon/remixicon.dart';

class OrderTab extends StatefulWidget {
  const OrderTab({Key? key}) : super(key: key);

  @override
  State<OrderTab> createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  var selectedScreen = "Pending Orders";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order', style: TextStyle(color: Colors.grey[400])),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: CustomTheme.violet.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedScreen = "Pending Orders";
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedScreen == "Pending Orders"
                            ? CustomTheme.violet
                            : Colors.transparent,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text('Pending Orders',
                            style: TextStyle(
                                fontSize: 14,
                                color: selectedScreen == "Pending Orders"
                                    ? Colors.white
                                    : CustomTheme.violet,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedScreen = "Past Orders";
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedScreen == "Past Orders"
                            ? CustomTheme.violet
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text('Past Orders',
                            style: TextStyle(
                                fontSize: 14,
                                color: selectedScreen == "Past Orders"
                                    ? Colors.white
                                    : CustomTheme.violet,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.grey[300]!,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Remix.search_2_line, color: CustomTheme.violet),
                          const SizedBox(width: 10),
                          Text('Search',
                              style: TextStyle(color: CustomTheme.violet)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey[300]!,
                      )),
                  child: Icon(
                    Remix.equalizer_line,
                    color: CustomTheme.violet,
                  ),
                ),
              ],
            ),
          ),
          selectedScreen == "Pending Orders"
              ? ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: ProcessOrderView(),
                    );
                  },
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: PastOrderView(),
                    );
                  },
                )
        ],
      ),
    );
  }
}
