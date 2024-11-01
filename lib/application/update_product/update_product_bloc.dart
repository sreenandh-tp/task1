import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


import 'package:sreenandh_machine_test/domain/upadate_product/i_update_product.dart';

part 'update_product_event.dart';
part 'update_product_state.dart';
part 'update_product_bloc.freezed.dart';

@injectable
class UpdateProductBloc extends Bloc<UpdateProductEvent, UpdateProductState> {
  final IUpdateProduct iUpdateProduct;
  UpdateProductBloc(this.iUpdateProduct) : super(UpdateProductState.initial()) {
    on<UpdateProductEvent>((event, emit) async {
      emit(
        const UpdateProductState(
          isLoading: true,
          idUpdate: false,
          updatedList: [],
        ),
      );

      var updatedProduct = await iUpdateProduct.getUpdatedProduct(
          productID: event.productID,
          productname: event.productname,
          price: event.productprice,
          description: event.description
          
          
          
          );
    });
  }
}
