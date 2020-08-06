import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import './providers/products_provider.dart';
import './providers/cart.dart';

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
        ],
       child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinco Books',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.cyanAccent,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}


