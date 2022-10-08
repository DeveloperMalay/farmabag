import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/utils/custom_theme.dart';

List<Map<String, String>> productDate = [
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$67.19",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$67.19",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$67.19",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$67.19",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$67.19",
    "PTR": "\$27.18"
  },
];

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productDate.length,
        itemBuilder: (context, index) {
          var currentItem = productDate[index];
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: CustomTheme.cardShadow,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.network(
                  "${currentItem['imageUrl']}",
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 180,
                      child: ListTile(
                          title: Text(
                            "${currentItem['title']}",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 93, 90, 241),
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                          subtitle: Text(
                            "${currentItem['subtitle']}",
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, top: 10),
                      child: Text(
                        "${currentItem['MRP']}",
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Color.fromARGB(255, 93, 90, 241),
                          ),
                        ),
                        const Text(
                          "10",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle,
                            color: Color.fromARGB(255, 93, 90, 241),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                      height: 30,
                      child: CupertinoButton(
                        padding: const EdgeInsets.all(0),
                        color: const Color.fromARGB(255, 93, 90, 241),
                        child: Text(
                          'Remove',
                          style: TextStyle(color: whiteColor, fontSize: 10),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
