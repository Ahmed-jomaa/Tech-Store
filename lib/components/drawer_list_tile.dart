// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  String label;
  Icon icon;
  DrawerListTile({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: icon,
        title: Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}
