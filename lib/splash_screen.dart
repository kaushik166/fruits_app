import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruits_app/1st_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const FirstScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff69A03A),
      body: Stack(
        children: [
          const Center(
            child: Text(
              "Fruits Market",
              style: TextStyle(
                  fontFamily: "poppins", color: Colors.white, fontSize: 40),
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  bottom: -50,
                  left: -60,
                  child: Image.asset("assets/images/mix_fruit.png",
                      width: 550, fit: BoxFit.fitWidth))
            ],
          ),
        ],
      ),
    );
  }
}
