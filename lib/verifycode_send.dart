import 'package:flutter/material.dart';

import 'address_page.dart';

class VerifyCodeSend extends StatelessWidget {
  const VerifyCodeSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                    builder: (context) => AddressPage(),
                  ),
                );
              },
              child: Image.asset("assets/images/codesend.png"),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressPage(),
                    ));
              },
              child: const Text(
                "Verification Code Send on\nyour Registered Mobile Number ",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
