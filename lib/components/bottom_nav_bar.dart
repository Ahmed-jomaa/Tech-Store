// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  void Function(int) onTap;
  MyBottomNavBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: widget.onTap,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade500,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.laptop_chromebook_rounded),
          label: 'Store',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_rounded),
          label: 'Cart',
        ),
      ],
    );
  }
}
