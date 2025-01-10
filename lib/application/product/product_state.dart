part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required List<Product> products,
    required bool isError,
    // required bool isClicked,
    // required List favList
  }) = _ProductState;

  factory ProductState.initial() {
    return const  ProductState(
      isLoading: false,
      products: [],
      isError: false,
      // isClicked: false,
      // favList: []
    );
  }
}
