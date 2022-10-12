import 'package:flutter/material.dart';
import 'package:pharmabag/provider/buyer.dart';
import 'package:pharmabag/provider/buyer_details.dart';
import 'package:provider/provider.dart';



class BuyerCallBack {
  final BuildContext context;

  BuyerCallBack(this.context);

  BuyerProvider get buyerProvider => Provider.of<BuyerProvider>(context);
  BuyerProvider get buyerProviderWithoutLisner =>
      Provider.of<BuyerProvider>(context, listen: false);
  GetBuyerDetails? get getBuyDetails =>
      Provider.of<BuyerProvider>(context, listen: false).getSellerDetails;
}
