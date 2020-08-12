import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:shop_app/screens/user_products_screen.dart';
import './providers/products_provider.dart';
import './providers/cart.dart';
import './providers/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Multiples providers
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(create: (ctx) => Orders()
        ),
        ],
       child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinco Books',
        theme: ThemeData(
          //colors
          primarySwatch: Colors.cyan,
          accentColor: Colors.cyanAccent,
          //fonts
          fontFamily: 'Lato',
          //text
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
          )
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}


