import 'package:flutter/material.dart';

import '/components/shop_list_view.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 197, 197, 197),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Best products',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 20),
        const Expanded(child: ShopCartListTile()),
      ],
    );
  }
}
