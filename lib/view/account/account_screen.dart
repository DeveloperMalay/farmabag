import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 93, 90, 241),
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi Ramesh,",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "buyer's Id: #12345",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Center(
                        child: Text(
                          'verification pending',
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    size: 60,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      'https://img.freepik.com/free-vector/post-service-tracking-abstract-concept-vector-illustration-parcel-monitor-track-trace-your-shipment-package-tracking-number-express-delivery-online-shopping-mail-box-abstract-metaphor_335657-1777.jpg',
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Shipping & Tracking",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "wfkhfiur reifjbrueibf \ni rifuierbf rufhreuf",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Image.network(
                      'https://img.freepik.com/free-vector/post-service-tracking-abstract-concept-vector-illustration-parcel-monitor-track-trace-your-shipment-package-tracking-number-express-delivery-online-shopping-mail-box-abstract-metaphor_335657-1777.jpg',
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Returns & Refunds",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "wfkhfiur reifjbrueibf \ni rifuierbf rufhreuf",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Image.network(
                      'https://img.freepik.com/free-vector/post-service-tracking-abstract-concept-vector-illustration-parcel-monitor-track-trace-your-shipment-package-tracking-number-express-delivery-online-shopping-mail-box-abstract-metaphor_335657-1777.jpg',
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Login & Security",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "wfkhfiur reifjbrueibf \ni rifuierbf rufhreuf",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Image.network(
                      'https://img.freepik.com/free-vector/post-service-tracking-abstract-concept-vector-illustration-parcel-monitor-track-trace-your-shipment-package-tracking-number-express-delivery-online-shopping-mail-box-abstract-metaphor_335657-1777.jpg',
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Buying & Selling",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "wfkhfiur reifjbrueibf i \nrifuierbf rufhreuf",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Image.network(
                      'https://img.freepik.com/free-vector/post-service-tracking-abstract-concept-vector-illustration-parcel-monitor-track-trace-your-shipment-package-tracking-number-express-delivery-online-shopping-mail-box-abstract-metaphor_335657-1777.jpg',
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Shipping & Tracking",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "wfkhfiur reifjbrueibf \ni rifuierbf rufhreuf",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: CupertinoButton(
              color: const Color.fromARGB(255, 93, 90, 241),
              child: const Text("Log Out"),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
