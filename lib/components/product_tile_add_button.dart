// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ProductTileAddButton extends StatelessWidget {
  ProductTileAddButton({super.key, required this.onPressed});
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      child: IconButton(
        icon: const Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
