import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/Providers/cart.dart';
import '/Providers/orders.dart';
import '/Providers/products.dart';
import '/Screens/Home/products_overview_screen.dart';
import '/Screens/Home/product_detail_screen.dart';
import '/Screens/Home/cart_screen.dart';
import '/Screens/Home/order_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.white,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen(),
        },
      ),
    );
  }
}
