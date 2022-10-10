import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmabag/utils/custom_theme.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'PharmaBag',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 227, 227, 255),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.network(
                  'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                  height: 350,
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg',
                    height: 80,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow),
                  child: const Center(child: Text('Ethical')),
                ),
                const Text(
                  "same Product bonus",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: CustomTheme.cardShadow, color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle)),
            const Text(
              "100",
              style: TextStyle(fontSize: 20),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle)),
            const SizedBox(
              width: 20,
            ),
            CupertinoButton(
                color: const Color.fromARGB(255, 93, 90, 241),
                child: const Text('Add to Bag'),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
