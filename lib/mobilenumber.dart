import 'package:flutter/material.dart';
import 'package:fruits_app/verification_page.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 53,
                    width: 53,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text("+91")),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 5, color: Colors.green)),
                          filled: false),
                      onChanged: (value) {
                        if (value.length == 10) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerificationPage(),
                            ),
                          );
                        }
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationPage(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Verify",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
