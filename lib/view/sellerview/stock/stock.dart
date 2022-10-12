import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/provider/stock.dart';
import 'package:pharmabag/provider_callback/stock.dart';
import 'package:pharmabag/view/sellerview/stock/components/inventry.dart';
import 'package:provider/provider.dart';
import 'package:remixicon/remixicon.dart';

class StockTab extends StatefulWidget {
  const StockTab({Key? key}) : super(key: key);

  @override
  State<StockTab> createState() => _StockTabState();
}

class _StockTabState extends State<StockTab> {
  @override
  void initState() {
    StockCallBack(context).withOutstockProvider.getStockProvider(context);
    super.initState();
  }

  var selectedValue = "All";
  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(builder: (context, data, child) {
      var ds = data.dsValue;
      return RefreshIndicator(
        onRefresh: () async {
          await data.getStockProvider(context);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Stock', style: TextStyle(color: blackColor)),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 1,
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: primaryColor, width: 0.5),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Remix.search_line,
                            color: primaryColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: ((value) {
                                if (value.isEmpty) {
                                  data.getStockProvider(context);
                                } else {
                                  data.searchStock(context, value);
                                }
                              }),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(0),
                                  hintText: "Search by product name",
                                  helperStyle: TextStyle(
                                      color: primaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.all(14),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(color: primaryColor, width: 0.5),
                  //   ),
                  //   child: Icon(
                  //     Remix.equalizer_line,
                  //     color: primaryColor,
                  //     size: 20,
                  //   ),
                  // ),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Text("Complete uploading"),
              // SizedBox(
              //   height: 20,
              // ),
              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   elevation: 10,
              //   shadowColor: Color(0xFFA7BAFF).withOpacity(0.2),
              //   child: Padding(
              //     padding: const EdgeInsets.all(15),
              //     child: Row(
              //       children: [
              //         Image.network(
              //           "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png",
              //           width: 64,
              //           height: 54,
              //         ),
              //         const SizedBox(
              //           width: 15,
              //         ),
              //         Column(
              //           children: [
              //             const Text(
              //               "ESLO 2.5MG TABLET",
              //               style: TextStyle(
              //                   fontSize: 14, fontWeight: FontWeight.w400),
              //             ),
              //             Text(
              //               "1200 units remaining",
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w400,
              //                   color: primaryColor),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Inventory"),
                  Row(
                    children: [
                      const Text("Filter: "),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade100),
                        child: Center(
                          child: PopupMenuButton<String>(
                            child: Text(
                              selectedValue,
                              style: const TextStyle(fontSize: 12),
                            ),
                            onSelected: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                            itemBuilder: (BuildContext context) {
                              return {'All', 'Expired', 'Usable'}
                                  .map((String choice) {
                                return PopupMenuItem<String>(
                                  height: 13,
                                  enabled:
                                      selectedValue == choice ? false : true,
                                  value: choice,
                                  child: Text(
                                    choice,
                                    style: const TextStyle(fontSize: 11),
                                  ),
                                );
                              }).toList();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ds!.resultProducts!.isEmpty
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: const Center(
                        child: Text("No data found"),
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: ds.resultProducts!.length,
                      itemBuilder: (context, index) {
                        final now = DateTime.now();
                        final expirationDate = DateTime.parse(
                            ds.resultProducts![index].expireDate!);
                        final bool isExpired = expirationDate.isBefore(now);
                        return selectedValue == "All"
                            ? InventoryCard(
                                ds: ds.resultProducts![index],
                              )
                            : (selectedValue == "Expired") == isExpired
                                ? InventoryCard(
                                    ds: ds.resultProducts![index],
                                  )
                                : (selectedValue == "Usable") == !isExpired
                                    ? InventoryCard(
                                        ds: ds.resultProducts![index],
                                      )
                                    : Container();
                      },
                    )
            ],
          ),
        ),
      );
    });
  }
}
