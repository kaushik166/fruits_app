import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/codesend.png"),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.orangeAccent.withOpacity(0.6),
                  size: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Payment Successful\nyour Order is Booked ",
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
