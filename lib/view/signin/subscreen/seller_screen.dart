import 'package:flutter/material.dart';

class SellerScreen extends StatelessWidget {
  const SellerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
          child: Text(
            "Phone Number",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your phone number",
          ),
        ),
      ],
    );
  }
}
