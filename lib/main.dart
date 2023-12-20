import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/models/cart.dart';
import '/screens/intro_screen.dart';
import '/font.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: googleFonts(),
        ),
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
      ),
    );
  }
}
