part of 'favorite_products_bloc.dart';

@immutable
sealed class FavoriteProductsEvent {}

class AddFavItems extends FavoriteProductsEvent {
  final int id;

  AddFavItems({required this.id});
}

class RemoveFavItem extends FavoriteProductsEvent {
  final int id;

  RemoveFavItem({required this.id});
}
