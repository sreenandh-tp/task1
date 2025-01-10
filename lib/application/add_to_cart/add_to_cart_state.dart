part of 'add_to_cart_bloc.dart';

class AddToCartState {
   final List<Product> addToCartProduct;


  AddToCartState({ required this.addToCartProduct});
}

class InitialState extends AddToCartState {
  InitialState({required super.addToCartProduct});
}
