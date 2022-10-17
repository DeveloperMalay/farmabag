import 'package:flutter/material.dart';
import 'package:pharmabag/view/authenticationview/signup/signup_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // expANDED
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 100,
                    width: 100,
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Color(0xFFC4C4C4),
                  //   radius: 50,
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    '  India’s number one\npharma marketplace',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // CoNTaINer
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(17),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF5467ED),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  'Get started as a seller',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a stokist? ',
                    style: TextStyle(fontSize: 16, color: Color(0xFFA3A6BA)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ));
                    },
                    child: const Text(
                      'Buyer space',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          color: Color(0xFF5467ED),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
