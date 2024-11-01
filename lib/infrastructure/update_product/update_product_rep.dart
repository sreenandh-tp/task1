import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sreenandh_machine_test/application/update_product/update_product_bloc.dart';
import 'package:sreenandh_machine_test/domain/core/api_url.dart';
import 'package:sreenandh_machine_test/domain/core/mainFailures.dart';
import 'package:sreenandh_machine_test/domain/upadate_product/i_update_product.dart';

class UpdateProductRep implements IUpdateProduct {
  @override
  Future<Either<MainFailures, List<UpdateProduct>>> getUpdatedProduct(
      {required int productID}) async {
    try {
      var body = {
        "ProductName": '',
        "ProductPrice": '',
      };

      final response = await Dio().put(
        ApiUrl.updateProduct,
        queryParameters: {
          'id': productID,
        },
        
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (_) {
      return left(const MainFailures.clientFailure());
    }
  }
}
