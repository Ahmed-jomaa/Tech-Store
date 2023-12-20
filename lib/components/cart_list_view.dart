// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/components/cart_product_tile.dart';
import '/models/cart.dart';
import '/models/product.dart';

class CartListview extends StatelessWidget {
  CartListview({super.key, required this.itemCount});
  late int itemCount;
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        final getProductCart = value.getProductCart();
        if (getProductCart.isEmpty) {
          // If the cart is empty, return a Center widget with a text
          return Center(
            child: Text(
              'Your cart is empty',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        } else {
          {
            // If the cart is not empty, return a ListView.builder
            return ListView.builder(
              itemCount: itemCount,
              itemBuilder: (context, index) {
                Product product = getProductCart[index];
                return CartProductTile(
                  product: product,
                );
              },
            );
          }
        }
      },
    );
  }
}
