part of 'update_product_bloc.dart';

@freezed
class UpdateProductState with _$UpdateProductState {
  const factory UpdateProductState({
    required bool isLoading,
    required bool idUpdate,
    required List<UpdateProduct> updatedList,
    String? productname,
    int? price,
    String? description,
  }) = _Initial;

  factory UpdateProductState.initial() {
    return const UpdateProductState(
        isLoading: false,
        idUpdate: false,
        updatedList: [],
        description: '',
        productname: '',
        price: 0);
  }
}
