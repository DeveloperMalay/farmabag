// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pharmabag/global/global.dart';
import 'package:pharmabag/global/seller_global.dart';
import 'package:pharmabag/provider_callback/buyer.dart';
import 'package:pharmabag/provider_callback/seller.dart';
import 'package:pharmabag/view/authenticationview/signin/signin_screen.dart';
import 'package:pharmabag/view/authenticationview/signup/signup_screen.dart';
import 'package:pharmabag/view/buyerview/home.dart';
import 'package:pharmabag/view/onbording/welcome.dart';

class SellerLoginCallBack {
  static Future<void> onChechkingAccount(context) async {
    var isLogged = await SellerGlobalHandler.checkLogedin();

    if (isLogged) {
      var token = await SellerGlobalHandler.getToken();
      print(token);
      if (token != null) {
        // await SellerCallBack(context)
        //     .sellerProviderWithoutLisner
        //     .getUser(context);
        // if (SellerCallBack(context).getSellerDetails != null) {
        //   if (SellerCallBack(context).getSellerDetails!.isAccountFound! ==
        //       true) {
        //     Navigator.pushReplacement(context,
        //         MaterialPageRoute(builder: (context) {
        //       return const Home();
        //     }));
        //   } else {
        //     Navigator.pushReplacement(context,
        //         MaterialPageRoute(builder: (context) {
        //       return const SignUpScreen();
        //     }));
        //   }
        // } else {
        //   SellerGlobalHandler.snackBar(
        //       context: context, message: "Session Expire", isWarning: true);
        //   Navigator.pushReplacement(context,
        //       MaterialPageRoute(builder: (context) {
        //     return const SignUpScreen();
        //   }));
        // }
      } else {
        SellerLoginCallBack().onCheckAccountBuyer(context);
      }
    } else {
      SellerLoginCallBack().onCheckAccountBuyer(context);
    }
  }

  Future onCheckAccountBuyer(BuildContext context) async {
    try {
      var buyerIsLogged = await BuyerGlobalHandler.checkLogedin();
      if (buyerIsLogged) {
        var buyerToken = await BuyerGlobalHandler.getToken();
        if (buyerToken != null) {
          await BuyerCallBack(context)
              .buyerProviderWithoutLisner
              .getUser(context);
          if (BuyerCallBack(context).getBuyDetails != null) {
            if (BuyerCallBack(context).getBuyDetails!.isAccountFound! == true) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const Home();
              }));
            } else {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SignIn();
              }));
            }
          } else {
            SellerGlobalHandler.snackBar(
                context: context, message: "Session Expire", isWarning: true);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return SignUpScreen();
            }));
          }
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const WelcomePage();
          }));
        }
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const WelcomePage();
        }));
      }
    } catch (e) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const WelcomePage();
      }));
    }
  }
}
