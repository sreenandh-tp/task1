part of 'add_to_cart_bloc.dart';

@immutable
sealed class AddToCartEvent {}

class AddToCart extends AddToCartEvent {
  final Product product;

  AddToCart({required this.product});
}
