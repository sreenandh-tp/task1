

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sreenandh_machine_test/domain/core/api_url.dart';
import 'package:sreenandh_machine_test/domain/core/mainFailures.dart';
import 'package:sreenandh_machine_test/domain/product_list/i_product_rep.dart';
import 'package:sreenandh_machine_test/domain/product_list/models/product_model.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IProductRep)
class ProductRepository implements IProductRep {
  @override
  Future<Either<MainFailures, List<Product>>> getProductsDetails() async {
    try {
      final response = await Dio().get(ApiUrl.product);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // log(response.data.toString());
        var data = ProductModel.fromJson(response.data);

        return right(data.products);
      } else {
        return left(
          const MainFailures.serverFailure(),
        );
      }
    } catch (_) {
      return left(
        const MainFailures.clientFailure(),
      );
    }
  }
}
