import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    //escuchamos si hay cambios para actualizar los childs
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0), 
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id, 
        products[i].title,
        products[i].imageUrl
        ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        childAspectRatio: 3 / 4, 
        crossAxisSpacing: 10, 
        mainAxisSpacing: 10 
        ),
      );
  }
}