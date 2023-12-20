// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '/components/product_tile_add_button.dart';
import '/models/product.dart';

class ShopProductTile extends StatelessWidget {
  ShopProductTile({super.key, required this.product, required this.onPressed});
  Product product;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 280,
      decoration: BoxDecoration(
        color: const Color.fromARGB(97, 82, 82, 82),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(
              product.image,
              fit: BoxFit.contain,
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              product.name,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              '\$${product.price}',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                        Text(
                          product.description,
                          style: Theme.of(context).textTheme.headlineSmall,
                        )
                      ],
                    )
                  ],
                ),
                ProductTileAddButton(onPressed: onPressed),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// IconButton(
//   onPressed: () {},
//   icon: const Icon(Icons.add_rounded),
// ),

// Image.asset(
//                   product.image,
//                   fit: BoxFit.contain,
//                   height: 200,
//                   width: 200,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text(
//                       product.name,
//                       style: Theme.of(context).textTheme.labelSmall,
//                     ),
//                     Text('${product.price} \$'),
//                   ],
//                 ),



/*
padding: EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 197, 197, 197),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Image.asset(
              product.image,
              fit: BoxFit.contain,
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(width: 20),
                        Text('${product.price} \$'),
                      ],
                    ),
                    Text(
                      product.description,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
*/
