part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProductsDetails() = GetProductsDetails;
  // const factory ProductEvent.addsTofav({
  //   required int id,
  // }) = AddsTofav;

}