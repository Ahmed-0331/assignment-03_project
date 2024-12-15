
import 'package:assignment_project/ui/screens/add_new_product_screen.dart';
import 'package:assignment_project/ui/screens/product_list_screen.dart';
import 'package:assignment_project/ui/screens/update_product_screen.dart';
import 'package:flutter/material.dart';

import 'models/product.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == '/') {
          widget = const ProductListScreen();
        } else if (settings.name == ProductCreateScreen.name) {
          widget = const ProductCreateScreen();
        } else if (settings.name == UpdateProductScreen.name) {
          final Product product = settings.arguments as Product;
          widget = UpdateProductScreen(product: product);
        }

        return MaterialPageRoute(
          builder: (context) {
            return widget;
          },
        );
      },
    );
  }
}