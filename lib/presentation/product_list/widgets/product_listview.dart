import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sreenandh_machine_test/application/add_to_cart/add_to_cart_bloc.dart';
import 'package:sreenandh_machine_test/core/colors.dart';
import 'package:sreenandh_machine_test/presentation/product_details/product_details.dart';

import '../../../application/favoriteproducts/favorite_products_bloc.dart';
import '../../../application/product/product_bloc.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductBloc>(context)
          .add(const ProductEvent.getProductsDetails());
    });
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.isLoading) {
          const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.isError) {
          return const Center(child: Text('Error while occured'));
        } else {
          return SizedBox(
            height: size.height * 0.3,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.products.length,
              // padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                final productitems = state.products[index];
                // print("Upading");
                // log(productitems.toString());
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            id: productitems.id,
                            price: productitems.price,
                            imageUrl: productitems.images[0],
                            name: productitems.title,
                            description: productitems.description,
                            rating: productitems.rating,
                            stock: productitems.stock,
                            category: productitems.category.toString(),
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                        width: size.width / 2.3,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 248, 248),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: state.isLoading
                              ? CircularProgressIndicator(
                                  strokeWidth: 2, color: blueColor)
                              : Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        child: BlocBuilder<FavoriteProductsBloc,
                                            FavoriteProductsState>(
                                          builder: (context, state) {
                                            if (state.favLikeList
                                                .contains(productitems.id)) {
                                              return GestureDetector(
                                                  onTap: () {
                                                    context
                                                        .read<
                                                            FavoriteProductsBloc>()
                                                        .add(
                                                          RemoveFavItem(
                                                              id: productitems
                                                                  .id),
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
                                                    .read<
                                                        FavoriteProductsBloc>()
                                                    .add(
                                                      AddFavItems(
                                                          id: productitems.id),
                                                    );
                                              },
                                              child: const Icon(
                                                  Icons.favorite_border),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    // const SizedBox(height: 10),
                                    SizedBox(
                                      width: 90,
                                      height: 80,
                                      child: state.isLoading
                                          ? CircularProgressIndicator(
                                              strokeWidth: 2, color: blueColor)
                                          : Image.network(
                                              productitems.images[0],
                                              fit: BoxFit.cover,
                                            ),
                                    ),
                                    // const SizedBox(height: 15),
                                    Text(
                                      productitems.title,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      productitems.description,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "\$${productitems.price}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.black87,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: IconButton(
                                          onPressed: () {
                                            context.read<AddToCartBloc>().add(
                                                  AddToCart(
                                                      product: productitems),
                                                );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                duration: Duration(seconds: 1),
                                                content: Text(
                                                    'Product Added To Cart'),
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                          ),
                                        ),
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
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
