import 'package:flutter/material.dart';

import '/components/bottom_nav_bar.dart';
import '/components/main_drawer.dart';
import '/screens/cart_screen.dart';
import '/screens/shop_screen.dart';

int selectedIndex = 0;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //this function to navigate throw the bar
  void navigatethrowbar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //pages list
  final List<Widget> _pages = [
    const ShopScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu_rounded),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          })),
      bottomNavigationBar: MyBottomNavBar(
        onTap: (e) {
          navigatethrowbar(e);
        },
      ),
      body: _pages[selectedIndex],
    );
  }
}
