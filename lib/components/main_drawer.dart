import 'package:flutter/material.dart';
import '/components/drawer_list_tile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                width: 120,
                height: 120,
                child: Image.asset('lib/images/applelogo.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              DrawerListTile(
                  label: 'Home', icon: const Icon(Icons.home_rounded)),
              DrawerListTile(
                  label: 'About', icon: const Icon(Icons.info_rounded)),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: DrawerListTile(
                label: 'Logout', icon: const Icon(Icons.logout_rounded)),
          ),
        ],
      ),
    );
  }
}
