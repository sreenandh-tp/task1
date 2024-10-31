part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required List<Product> products,
    required bool isError,
  }) = _ProductState;

  factory ProductState.initial() {
    return const ProductState(
      isLoading: false,
      products: [],
      isError: false,
    );
  }
}
