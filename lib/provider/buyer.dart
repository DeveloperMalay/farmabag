import 'package:flutter/cupertino.dart';
import 'package:pharmabag/provider/buyer_details.dart';

class BuyerProvider extends ChangeNotifier {
  GetBuyerDetails? getSellerDetails;
  Future getUser(BuildContext context) async {
    // var ds = await getBuyerDetailsMethod(context);
    //getSellerDetails = ds;
    notifyListeners();
  }
}
