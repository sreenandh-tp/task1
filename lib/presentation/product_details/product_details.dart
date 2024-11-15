import 'package:flutter/material.dart';
import 'package:sreenandh_machine_test/presentation/update_product/update_page.dart';

import '../../core/colors.dart';

class ProductDetailsPage extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final double rating;
  final int stock;
  final String category;

  ProductDetailsPage({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.id,
    required this.rating,
    required this.stock,
    required this.category,
  });

  final String items = 'Edit';

  final updateIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        leading: const Card(
          child: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        actions: [
          Card(
            shape: const CircleBorder(),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(items),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdatePage(
                          id: id,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.35,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: blueColor),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: ${rating.toString()}⭐',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Stock: $stock',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        category,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'About Item :',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.purple[50],
                        ),
                        child: const Center(
                          child: Text(
                            'Full Specification',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Text(
                        'Reviews',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: const TextStyle(),
                  ),
                  Card(
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      title: const Text(
                        'Aghmashenebile Ave 75',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      subtitle: const Text(
                        '1 Item is in the way',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, bottom: 25),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  SizedBox(width: 6),
                  Text(
                    'ADD TO CART',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
