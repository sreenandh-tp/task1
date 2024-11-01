import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/update_product/update_product_bloc.dart';

class UpdatePage extends StatelessWidget {
  final int id;
  UpdatePage({super.key, required this.id});

  final productnameController = TextEditingController();
  final productpriceController = TextEditingController();
  final productdiscriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    return BlocListener<UpdateProductBloc, UpdateProductState>(
      listener: (context, state) {
        if (state.idUpdate) {
          const snackBar = SnackBar(
            content: Text('Product Details Updated Successfully.....'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Update Product Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: BlocBuilder<UpdateProductBloc, UpdateProductState>(
            builder: (context, state) {
              return Column(
                children: [
                  TextFormField(
                    controller: productnameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter New Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: productpriceController,
                    decoration: const InputDecoration(
                      hintText: 'Enter New Price',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: productdiscriptionController,
                    maxLines: 5,
                    minLines: 3,
                    decoration: const InputDecoration(
                      hintText: 'Enter New Discription',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  state.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            BlocProvider.of<UpdateProductBloc>(context).add(
                              UpdateProductEvent.updateProduct(
                                productID: id,
                                description: productdiscriptionController.text,
                                productname: productnameController.text,
                                productprice:
                                    int.parse(productpriceController.text),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.deepPurple,
                            child: const Center(
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
