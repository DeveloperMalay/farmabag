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
    "MRP": "\$49.99",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$49.99",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$49.99",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$49.99",
    "PTR": "\$27.18"
  },
  {
    "imageUrl":
        "https://newassets.apollo247.com/pub/media/catalog/product/t/o/ton0012.jpg",
    "title": "Tonact 5g tablets",
    "subtitle": "Sold by SLS farm",
    "MRP": "\$49.99",
    "PTR": "\$27.18"
  },
];

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
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
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    "${currentItem['imageUrl']}",
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ListTile(
                            title: Text(
                              "${currentItem['title']}",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 93, 90, 241),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Text(
                              "${currentItem['subtitle']}",
                              style: const TextStyle(
                                fontSize: 12,
                              ),
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
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    width: 80,
                    height: 30,
                    child: CupertinoButton(
                      padding: const EdgeInsets.all(0),
                      color: Colors.green,
                      child: Text(
                        'Usable',
                        style: TextStyle(color: whiteColor, fontSize: 10),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: 80,
                    height: 30,
                    child: CupertinoButton(
                      padding: const EdgeInsets.all(0),
                      color: const Color.fromARGB(255, 93, 90, 241),
                      child: Text(
                        'Edit Bag',
                        style: TextStyle(color: whiteColor, fontSize: 10),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'MRP :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '\$ 100',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Discount type :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'PTR discount',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Final PTR Excluding GST :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '\$ 70.72',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'GST (12%) :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '\$0.08',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Net Rate including Gst :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '\$79.21',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Quentity :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '\$100 Strip',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Final Payable Value :',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '\$7921.00',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Color.fromARGB(255, 93, 90, 241),
                    ),
                  ),
                  const SizedBox(
                    width: 150,
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
    );
  }
}

//  Column(
//                   children: [
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.remove_circle,
//                             color: Color.fromARGB(255, 93, 90, 241),
//                           ),
//                         ),
//                         const Text(
//                           "10",
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.add_circle,
//                             color: Color.fromARGB(255, 93, 90, 241),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 50,
//                       height: 30,
//                       child: CupertinoButton(
//                         padding: const EdgeInsets.all(0),
//                         color: const Color.fromARGB(255, 93, 90, 241),
//                         child: Text(
//                           'Remove',
//                           style: TextStyle(color: whiteColor, fontSize: 10),
//                         ),
//                         onPressed: () {},
//                       ),
//                     )
//                   ],
//                 ),
