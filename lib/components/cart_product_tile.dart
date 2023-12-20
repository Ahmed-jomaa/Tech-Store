// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/cart.dart';
import '/models/product.dart';

class CartProductTile extends StatefulWidget {
  CartProductTile({super.key, required this.product});
  Product product;
  @override
  State<CartProductTile> createState() => _CartProductTileState();
}

class _CartProductTileState extends State<CartProductTile> {
  @override
  Widget build(BuildContext context) {
    removeItemFromcart() {
      Provider.of<Cart>(context, listen: false)
          .removeItemfromCart(widget.product);
    }

    return Consumer<Cart>(
      builder: ((context, value, child) => Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(97, 82, 82, 82),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(widget.product.image, height: 70),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.name,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Text(
                          '\$${widget.product.price}',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: removeItemFromcart,
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
