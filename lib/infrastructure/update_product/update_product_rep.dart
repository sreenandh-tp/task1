import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sreenandh_machine_test/application/update_product/update_product_bloc.dart' as bloc;
   
import 'package:sreenandh_machine_test/domain/core/api_url.dart';
import 'package:sreenandh_machine_test/domain/core/mainFailures.dart';
import 'package:sreenandh_machine_test/domain/upadate_product/i_update_product.dart';
import 'package:sreenandh_machine_test/domain/upadate_product/model/updated_product_model.dart';

@LazySingleton(as: IUpdateProduct)
class UpdateProductRep implements IUpdateProduct {
  @override
  getUpdatedProduct(
      {required int productID,
      required String productname,
      required String description,
      required int price}) async {
    try {
      final body = {
        "title": productname,
        "price": price,
        "id": productID,
        "description": description,
      };

      final response = await Dio().put(
        ApiUrl.updateProduct,
        queryParameters: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UpdateProduct.fromJson(response.data));
      }

      return const Left(
        MainFailures.serverFailure(),
      );
    } catch (_) {
      return const Left(
        MainFailures.clientFailure(),
      );
    }
  }
}
