import 'package:flutter/material.dart';

import 'product.dart';


class Products with ChangeNotifier{

  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Animales',
      description: 'A book that will show us a wide variety of animals from lions, turtles, dogs, flamingos, Giraffes, and frogs to teach children through fun and colorful illustrations the animals that exist.',
      price: 29.95,
      imageUrl:
          'https://isteam.wsimg.com/ip/be2a5b02-ff1e-11e4-999e-f04da20723f7/ols/1190_original/:/rs=w:600,h:600',
    ),
    Product(
      id: 'p2',
      title: 'Atlas americano',
      description: 'A fun, colorful and educational book with all the countries in the American continent with their flags, national symbols, and many other characteristics of the country.',
      price: 29.99,
      imageUrl:
          'https://isteam.wsimg.com/ip/be2a5b02-ff1e-11e4-999e-f04da20723f7/ols/611_original/:/rs=w:600,h:600',
    ),
    Product(
      id: 'p3',
      title: 'Ascensor fantasma',
      description: 'A fun book with hilarious illustrations that the children will find delightful.',
      price: 29.95,
      imageUrl:
          'https://isteam.wsimg.com/ip/be2a5b02-ff1e-11e4-999e-f04da20723f7/ols/760_original/:/rs=w:600,h:600',
    ),
    Product(
      id: 'p4',
      title: 'El plan beee',
      description: 'A book about freedom and finding your place in life, about dreaming and fighting for your dreams. Simona is a riot but with cause, she has a plan to change her life for the good.',
      price: 15.95,
      imageUrl:
          'https://isteam.wsimg.com/ip/be2a5b02-ff1e-11e4-999e-f04da20723f7/ols/1551_original/:/rs=w:600,h:600',
    ),
     Product(
      id: 'p5',
      title: 'Alas de fuego',
      description: 'Alas de fuego, la profecía',
      price: 14.95,
      imageUrl:
          'https://isteam.wsimg.com/ip/be2a5b02-ff1e-11e4-999e-f04da20723f7/ols/1568_original/:/rs=w:600,h:600',
    ),
     Product(
      id: 'p6',
      title: 'Milo, el gato malo',
      description: 'Milo, seems to be a very bad cat. But the appearances are deceptive, Why is he always cranky?',
      price: 15.95,
      imageUrl:
          'https://isteam.wsimg.com/ip/be2a5b02-ff1e-11e4-999e-f04da20723f7/ols/40_original/:/rs=w:600,h:600',
    ),
  ];

  //var _showFavoritesOnly = false;

  List<Product> get items {
/*     if (_showFavoritesOnly) {
      return _items.where((prodItem) => prodItem.isFavorite).toList();
    } */
    return[... _items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }

  /* void showFavoritesOnly(){
    _showFavoritesOnly = true;
    notifyListeners();
  }

  void showAll () {
    _showFavoritesOnly = false;
    notifyListeners();
  } */

  void addProduct(){
    //_items.add(value);
    notifyListeners();
  }

}