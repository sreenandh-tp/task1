import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sreenandh_machine_test/application/add_to_cart/add_to_cart_bloc.dart';
import 'package:sreenandh_machine_test/core/colors.dart';
import '../cart_products/product_cart.dart';
import 'widgets/product_listview.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: BlocBuilder<AddToCartBloc, AddToCartState>(
                builder: (context, state) {
                  return IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductCartPage(),
                            ));
                      },
                      icon: Row(
                        children: [
                          const Icon(Icons.shopping_cart),
                          Container(
                              height: 17,
                              width: 17,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                              child: Text(
                                textAlign: TextAlign.center,
                                state.addToCartProduct!.length.toString(),
                                style: const TextStyle(color: Colors.white),
                              ))
                        ],
                      ));
                },
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Discover our exclusive \nproducts',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'In this marketplace, you will find various\ntechnics in the cheapest price',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Head Phones',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: blueColor),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              ProductsListView(size: size),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Mobile & Accessories',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: blueColor),
                  ),
                ],
              ),
              ProductsListView(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
