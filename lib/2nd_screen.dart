import 'package:flutter/material.dart';

import '3rd_screen.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xff69A03A),
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
                    builder: (context) => const ThirdScreen(),
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
                    "Next",
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
