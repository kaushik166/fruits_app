import 'package:flutter/material.dart';

import 'verifycode_send.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerifyCodeSend(),
                  ),
                );
              },
              child: Image.asset("assets/images/verification.png"),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyCodeSend(),
                    ));
              },
              child: const Text(
                "Verifying Your Mobile Number",
                style: TextStyle(fontFamily: "poppins", fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
