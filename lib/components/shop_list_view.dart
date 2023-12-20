import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 

import '/components/shop_product_tile.dart';
import '/models/cart.dart';
import '/models/product.dart';

class ShopCartListTile extends StatefulWidget {
  const ShopCartListTile({super.key});

  @override
  State<ShopCartListTile> createState() => _ShopCartListTileState();
}

class _ShopCartListTileState extends State<ShopCartListTile> {
  @override
  Widget build(BuildContext context) {
    void addProductToCart(Product product) {
      setState(
        () {
          Provider.of<Cart>(context, listen: false).addItemToCart(product);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Succefully added',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              content: Text(
                'Check you cart',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          );
        },
      );
    }

    return Consumer<Cart>(
      builder: (context, vlaue, index) => ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          Product product = vlaue.getProductList()[index];
          return SizedBox(
            // width: 200,
            // height: 300,
            child: ShopProductTile(
              product: product,
              onPressed: () => addProductToCart(product),
            ),
          );
        },
      ),
    );
  }
}
