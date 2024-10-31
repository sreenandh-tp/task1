import 'package:sreenandh_machine_test/domain/core/mainFailures.dart';
import 'package:sreenandh_machine_test/domain/product_list/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class IProductRep {
  Future<Either<MainFailures, List<Product>>> getProductsDetails();
}
