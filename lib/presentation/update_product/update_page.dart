import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/update_product/update_product_bloc.dart';

class UpdatePage extends StatelessWidget {
  final int id;
  const UpdatePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UpdateProductBloc>(context).add(
        UpdateProductEvent.updateProduct(productID: id),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter New Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter New Price',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter New Category',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter New Stock',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              maxLines: 5,
              minLines: 3,
              decoration: const InputDecoration(
                hintText: 'Enter New Discription',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.deepPurple,
              child: const Center(
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
