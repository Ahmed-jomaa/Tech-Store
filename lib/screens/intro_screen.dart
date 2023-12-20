import 'package:flutter/material.dart';

import '/screens/home_screen.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  'lib/images/applelogo.png',
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(height: 50),
              //titel
              Text(
                'Make your life easier',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              //sub title
              Text(
                'Brand new apple products ...',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 100),
              //start now button
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const MyHomePage();
                  }));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    'Shop Now',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
