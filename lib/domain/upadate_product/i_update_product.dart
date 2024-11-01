import 'package:dartz/dartz.dart';
import 'package:sreenandh_machine_test/domain/core/mainFailures.dart';

import '../../application/update_product/update_product_bloc.dart';

abstract class IUpdateProduct {
  Future<Either<MainFailures, List<UpdateProduct>>> getUpdatedProduct({
    required int productID,
  });
}
