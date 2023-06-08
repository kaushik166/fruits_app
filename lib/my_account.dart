import 'package:flutter/material.dart';
import 'package:fruits_app/setting_page.dart';
import 'package:fruits_app/shopping_cart_page.dart';

import 'favourites_page.dart';
import 'help_page.dart';
import 'loginpage.dart';
import 'my_order.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List<Map<String, dynamic>> list = [
    {"icon": Icons.shopping_bag, "name": "My Orders"},
    {"icon": Icons.favorite, "name": "Favorite"},
    {"icon": Icons.settings, "name": "Settings"},
    {"icon": Icons.shopping_cart, "name": "My Cart"},
    {"icon": Icons.star_rate, "name": "Rate us"},
    {"icon": Icons.share, "name": "Rater a Friend"},
    {"icon": Icons.help, "name": "Help"},
    {"icon": Icons.logout, "name": "Log Out"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: const Color(0xff4CA300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/Ellipse.png"),
                      SizedBox(
                        width: 70,
                      ),
                      Image.asset('assets/images/edit.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Manish Chutke",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const Text(
                  "manishuxuid@gmail.com",
                  style: TextStyle(fontFamily: "poppins", color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              //scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: List.generate(
                    list.length,
                    (index) => GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyOrder(),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FavouritePage(),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingPage(),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShoppingCartPage(),
                            ),
                          );
                        } else if (index == 6) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HelpPage(),
                            ),
                          );
                        } else if (index == 7) {
                          _showDialog(context);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Icon(
                              list[index]["icon"],
                              color: Color(0xff4CA300),
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              list[index]["name"],
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Are You Sure You want to Log Out?",
            style: TextStyle(fontFamily: "poppins"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("NO"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text("YES"),
            ),
          ],
        );
      },
    );
  }
}
