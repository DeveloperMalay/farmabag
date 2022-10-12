import 'package:flutter/material.dart';
import 'package:pharmabag/view/onbording/welcome.dart';

class WeicomeBackPage extends StatelessWidget {
  const WeicomeBackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomePage()));
          },
        ),
      ),
    );
  }
}
