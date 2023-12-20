import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/components/cart_list_view.dart';
import '/models/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: ((context, value, child) => Center(
            child: CartListview(itemCount: value.productCart.length),
          )),
    );
  }
}
