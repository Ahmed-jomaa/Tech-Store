import 'package:flutter/material.dart';
import '/models/product.dart';

class Cart extends ChangeNotifier {
//list of product for sale
  List<Product> productShop = [
    Product(
      name: 'Air tag',
      price: '95',
      image: 'lib/images/airtag.png',
      description: 'find you stuff easly',
    ),
    Product(
      name: 'AirPods pro',
      price: '199',
      image: 'lib/images/airpodspro.png',
      description: 'enjoy the new color with airpods pro',
    ),
    Product(
      name: 'AirPods max',
      price: '399',
      image: 'lib/images/airpodsmax.png',
      description: 'Nice collection with new colors',
    ),
    Product(
      name: 'IPhone 14 pro max',
      price: '1100',
      image: 'lib/images/iphone14promax.png',
      description: 'A14 chip with 8GB of Ram',
    ),
    Product(
      name: 'Iphone 15 pro max',
      price: '1499',
      image: 'lib/images/iphone15promax.png',
      description: 'A15 chip with 12 GB of Ram',
    ),
    Product(
      name: 'MacBook Air 14',
      price: '95',
      image: 'lib/images/macbookair14.png',
      description: 'Black space color with the new M2 chip',
    ),
    Product(
      name: 'MacBook Pro 16',
      price: '95',
      image: 'lib/images/macbookpro16.png',
      description: '16 Inch display with inel core i9 processor',
    ),
  ];
  //cart list
  List<Product> productCart = [];

  //get product list
  List<Product> getProductList() {
    return productShop;
  }

  //get product cart
  List<Product> getProductCart() {
    return productCart;
  }

  //add items to the cart
  void addItemToCart(Product product) {
    productCart.add(product);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemfromCart(Product product) {
    productCart.remove(product);
    notifyListeners();
  }
}
