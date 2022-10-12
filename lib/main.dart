import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pharmabag/provider/add_stock.dart';
import 'package:pharmabag/provider/buyer.dart';
import 'package:pharmabag/provider/home.dart';
import 'package:pharmabag/provider/product_search.dart';
import 'package:pharmabag/provider/seller.dart';
import 'package:pharmabag/provider/stock.dart';
import 'package:pharmabag/utils/custom_theme.dart';
import 'package:pharmabag/view/authenticationview/signup/signup_screen.dart';
import 'package:pharmabag/view/sellerview/sellerhome.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayWidget: const Center(
        child: CircularProgressIndicator(),
      ),
      overlayColor: Colors.white,
      overlayOpacity: 1,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) {
            return HomeProvider();
          }),
          ChangeNotifierProvider(create: (context) {
            return AddStockProvider();
          }),
          ChangeNotifierProvider(create: (context) {
            return StockProvider();
          }),
          ChangeNotifierProvider(create: (context) {
            return BuyerProductProvider();
          }),
          ChangeNotifierProvider(create: (context) {
            return BuyerProductProvider();
          }),
          ChangeNotifierProvider(create: (context) {
            return SellerProvider();
          }),
          ChangeNotifierProvider(create: (context) {
            return BuyerProvider();
          })
        ],
        child: MaterialApp(
            theme: CustomTheme.getTheme(),
            debugShowCheckedModeBanner: false,
            home: const SHome()),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      const SHome();
      // await SellerLoginCallBack.onChechkingAccount(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          height: 200,
        ),
      ),
    );
  }
}
