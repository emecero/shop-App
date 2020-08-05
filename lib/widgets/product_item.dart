import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import 'package:shop_app/screens/product_detail_screen.dart';



class ProductItem extends StatelessWidget {
/*   final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl); */

  @override
  Widget build(BuildContext context) {
    //Provider de Product
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
     child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
            arguments: product.id,);
          },
          child: Image.network(
          product.imageUrl, 
          fit: BoxFit.cover,
           ),
          ),
          header: IconButton(
            icon: Icon(product.isFavorite ? Icons.favorite: Icons.favorite_border),
          alignment: Alignment.topLeft,
          color: Theme.of(context).accentColor,
          onPressed: () {
            product.toggleFavoriteStatus();
          },),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          /* leading: IconButton(icon: Icon(Icons.favorite),
          onPressed: () {},
          color: Theme.of(context).accentColor,), */
          title: Text(product.title, textAlign: TextAlign.center,),
          trailing: IconButton(icon: Icon(Icons.shopping_cart),
          onPressed: () {},
          color: Theme.of(context).accentColor,),
          ),
      ),
    );
     // child: Image.network(),)
  }
}