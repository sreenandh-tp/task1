
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sreenandh_machine_test/domain/d_i/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  await getIt.init(environment: Environment.prod);
}
