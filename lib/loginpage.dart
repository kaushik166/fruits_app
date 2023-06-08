import 'package:flutter/material.dart';
import 'package:fruits_app/mobilenumber.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/fruitsmixup.png"),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Fruits Market",
                    style: TextStyle(
                        fontFamily: "poppins",
                        color: Color(0xff69A03A),
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value.length == 10) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MobileNumber(),
                        ),
                      );
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(left: 20),
                    hintText: "Enter your Mobile Number",
                    hintStyle: const TextStyle(fontFamily: "poppins"),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                      fontFamily: "poppins", fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black54,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            height: 20,
                          ),
                          const Text(
                            "Login in with",
                            style:
                                TextStyle(fontFamily: "poppins", fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black54,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.facebook,
                            color: Colors.blueAccent,
                            size: 25,
                          ),
                          Text(
                            "Login in with",
                            style:
                                TextStyle(fontFamily: "poppins", fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
