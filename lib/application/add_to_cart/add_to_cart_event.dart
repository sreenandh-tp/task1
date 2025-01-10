part of 'add_to_cart_bloc.dart';

@immutable
sealed class AddToCartEvent {}

class AddToCart extends AddToCartEvent {
  final Product product;

  AddToCart({required this.product});
}

class Incrememnt extends AddToCartEvent {
  final List<Product> product;
  final int cartItemID;

  Incrememnt({required this.cartItemID,required this.product});
}
