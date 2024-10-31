import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
          ),
        );

        final Either<MainFailures, List<Product>> productOption =
            await iProductRep.getProductsDetails();

         print("BBBBBbbbb${productOption.toString()}");

        emit(
          productOption.fold(
            (MainFailures f) => const ProductState(
              isLoading: false,
              products: [],
              isError: true,
            ),
            (List<Product> s) => ProductState(
              isLoading: false,
              products: s,
              isError: false,
            ),
          ),
        );
      },
    );
  }
}
