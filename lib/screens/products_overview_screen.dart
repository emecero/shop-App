import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/products_grid.dart';
import '../widgets/badge.dart';
import '../providers/cart.dart';
import '../screens/cart_screen.dart';
import '../widgets/app_drawer.dart';


enum FilteredOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {

  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {

    //final productsContainer = Provider.of<Products>(context, listen: false);
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Cinco Books'),
        actions: <Widget>[
          
          PopupMenuButton(
            onSelected: (FilteredOptions selectedValue) {
              setState(() {
                if(selectedValue == FilteredOptions.Favorites){
                _showOnlyFavorites = true;
              } else {
                _showOnlyFavorites = false;
              }
             });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Only Favorites'), value: FilteredOptions.Favorites,),
              PopupMenuItem(child: Text('Show All'), value: FilteredOptions.All,),
            ],
            ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
            child: ch ,
              value: cart.itemCount.toString()
              ),
              child: IconButton(
              icon: Icon(Icons.shopping_cart), 
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              }
              ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}

