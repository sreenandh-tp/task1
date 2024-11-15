import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sreenandh_machine_test/domain/product_list/models/product_model.dart';

part 'add_to_cart_event.dart';
part 'add_to_cart_state.dart';

@injectable
class AddToCartBloc extends Bloc<AddToCartEvent, AddToCartState> {
  AddToCartBloc() : super(InitialState(addToCartProduct: [])) {
    // final List<Object> addcartItem = [];
    on<AddToCart>((event, emit) {
      final addCartItems = List<Product>.from(state.addToCartProduct)
        ..add(event.product);

      emit(AddToCartState(addToCartProduct: addCartItems));
    });
  }
}
