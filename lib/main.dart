import 'package:carts/providers/ShoppingCartProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AppRouter.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (_) => ShoppingCartProvider(),
        child: MyApp(appRouter: AppRouter()),
      )
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}