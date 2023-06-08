import 'package:flutter/material.dart';
import 'package:fruits_app/paymentsuccess.dart';

class PaymentWait extends StatelessWidget {
  const PaymentWait({Key? key}) : super(key: key);

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
                    builder: (context) => PaymentSuccess(),
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
                    builder: (context) => PaymentSuccess(),
                  ),
                );
              },
              child: const Text(
                "Please Wait",
                style: TextStyle(fontFamily: "poppins", fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
