import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("SplashScreen"),
      ),
      body: AnimatedSplashScreen(
        backgroundColor: Colors.teal,
        splash: ListView(
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Image(
                height: 100.0,
                width: 100.0,
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/09/01/00/16/png-2702697_640.png",
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Welcome to my Flutter class!!!!"),
          ],
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
