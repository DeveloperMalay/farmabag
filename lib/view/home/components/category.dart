import 'package:flutter/cupertino.dart';

List<Map<String, String>> categoryDate = [
  {
    "imageUrl":
        "https://icons.iconarchive.com/icons/medicalwp/medical/256/Pills-blue-icon.png",
    "title": "Tablets",
  },
  {
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmZvvphQBr_u11Hu5aNrRKlvbZBYC_fWTazQ&usqp=CAU",
    "title": "Suplements",
  },
  {
    "imageUrl": "https://cdn-icons-png.flaticon.com/512/761/761130.png",
    "title": "Injections",
  },
  {
    "imageUrl": "https://cdn-icons-png.flaticon.com/512/761/761130.png",
    "title": "Injections",
  },
  {
    "imageUrl": "https://cdn-icons-png.flaticon.com/512/761/761130.png",
    "title": "Injections",
  },
  {
    "imageUrl": "https://cdn-icons-png.flaticon.com/512/761/761130.png",
    "title": "Injections",
  },
  {
    "imageUrl": "https://cdn-icons-png.flaticon.com/512/761/761130.png",
    "title": "Injections",
  },
  {
    "imageUrl": "https://cdn-icons-png.flaticon.com/512/761/761130.png",
    "title": "Injections",
  },
];

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryDate.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var currentItem = categoryDate[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 227, 227, 255),
                  ),
                  child: Center(
                    child: Image.network(
                      "${currentItem['imageUrl']}",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Text(
                  "${currentItem['title']}",
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            );
          }),
    );
  }
}
