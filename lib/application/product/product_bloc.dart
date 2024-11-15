import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sreenandh_machine_test/domain/product_list/i_product_rep.dart';
import '../../domain/core/mainFailures.dart';
import '../../domain/product_list/models/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRep iProductRep;
  ProductBloc(this.iProductRep) : super(ProductState.initial()) {
    on<GetProductsDetails>(
      (event, emit) async {
        emit(
          const ProductState(
              isLoading: true,
              products: [],
              isError: false,
              // isClicked: false,
              // favList: [],
              ),
        );

        final Either<MainFailures, List<Product>> productOption =
            await iProductRep.getProductsDetails();

        if (state.products.isNotEmpty) {
          emit(
            ProductState(
              // isClicked: false,
              isLoading: false,
              products: state.products,
              isError: false,
              // favList: [],
            ),
          );
          return;
        }

        emit(
          productOption.fold(
            (MainFailures f) => const ProductState(
                // isClicked: false,
                isLoading: false,
                products: [],
                isError: true,
                // favList: []
                ),
            (List<Product> s) => ProductState(
                // isClicked: false,
                isLoading: false,
                products: s,
                isError: false,
                // favList: []
                ),
          ),
        );
      },
    );
    // List likedList = [];

    // on<AddsTofav>(
    //   (event, emit) {
    //     likedList.add(event.id);
    //     emit(
    //       state.copyWith(
    //         favList: likedList,
    //       ),
    //     );
       
    //     print(likedList);
    //   },
    // );
  }
}
