part of 'favorite_products_bloc.dart';

class FavoriteProductsState {
  final List favLikeList;

  FavoriteProductsState({required this.favLikeList});
}

class InitialState extends FavoriteProductsState{
  InitialState({required super.favLikeList});

}
