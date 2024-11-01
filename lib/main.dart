import 'package:flutter/material.dart';
import 'package:sreenandh_machine_test/application/product/product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sreenandh_machine_test/application/update_product/update_product_bloc.dart';
import 'domain/d_i/injectable.dart';
import 'presentation/product_list/product_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateProductBloc>(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProductListPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
