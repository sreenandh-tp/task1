import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sreenandh_machine_test/application/add_to_cart/add_to_cart_bloc.dart';
import 'package:sreenandh_machine_test/application/favoriteproducts/favorite_products_bloc.dart';

class ProductCartPage extends StatelessWidget {
  const ProductCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Items'),
      ),
      body: BlocBuilder<AddToCartBloc, AddToCartState>(
        builder: (context, state) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: size.height * 0.3, crossAxisCount: 2),
            itemCount: state.addToCartProduct.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final cartItems = state.addToCartProduct[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {}
                    //   ),
                    // );
                  },
                  child: Card(
                    child: Container(
                      height: size.height / 2,
                      width: size.width / 2.3,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                child: BlocBuilder<FavoriteProductsBloc,
                                    FavoriteProductsState>(
                                  builder: (context, state) {
                                    if (state.favLikeList
                                        .contains(cartItems.id)) {
                                      return GestureDetector(
                                          onTap: () {
                                            context
                                                .read<FavoriteProductsBloc>()
                                                .add(
                                                  RemoveFavItem(
                                                      id: cartItems.id),
                                                );
                                          },
                                          child: const Icon(
                                            Icons.favorite_sharp,
                                            color: Colors.red,
                                          )
                                          // : const Icon(
                                          //     Icons.favorite_border),
                                          );
                                    }
                                    return GestureDetector(
                                      onTap: () {
                                        context
                                            .read<FavoriteProductsBloc>()
                                            .add(
                                              AddFavItems(id: cartItems.id),
                                            );
                                      },
                                      child: const Icon(Icons.favorite_border),
                                    );
                                  },
                                ),
                              ),
                            ),
                            // const SizedBox(height: 10),
                            SizedBox(
                              width: 90,
                              height: 80,
                              child: Image.network(
                                cartItems.images[0],
                                fit: BoxFit.cover,
                              ),
                            ),
                            // const SizedBox(height: 15),
                            Text(
                              cartItems.title,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              cartItems.description,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "\$${cartItems.price}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
