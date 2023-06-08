import 'package:flutter/material.dart';

import 'loginpage.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/deliveryready.png",
              height: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Delivery Arrived",
              style: TextStyle(fontFamily: "poppins", fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Order is arrived at your Place",
              style: TextStyle(
                  fontFamily: "poppins", fontSize: 17, color: Colors.black54),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xff69A03A),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 60,
                width: 200,
                color: const Color(0xff69A03A),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
