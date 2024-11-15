import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:meta/meta.dart';

part 'favorite_products_event.dart';
part 'favorite_products_state.dart';

@injectable
class FavoriteProductsBloc
    extends Bloc<FavoriteProductsEvent, FavoriteProductsState> {
  FavoriteProductsBloc() : super(InitialState(favLikeList: [])) {
    List likedFavList = [];
    on<AddFavItems>((event, emit) {
      likedFavList.add(event.id);

      emit(FavoriteProductsState(favLikeList: likedFavList));
    });
    on<RemoveFavItem>((event, emit) {
      likedFavList.remove(event.id);

      emit(FavoriteProductsState(favLikeList: likedFavList));
    });
  }
}
