import 'package:flutter/material.dart';
import 'package:fruits_app/shopping_cart_page.dart';

import 'favourites_page.dart';
import 'fruits_page.dart';
import 'my_account.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List<Map<String, dynamic>> list = [
    {"icon": Icons.home, "name": "Home"},
    {"icon": Icons.shopping_cart_outlined, "name": "Shopping cart"},
    {"icon": Icons.favorite_border, "name": "Favorite"},
    {"icon": Icons.person, "name": "My Account"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          FruitsPage(),
          ShoppingCartPage(),
          FavouritePage(),
          MyAccount(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              list.length,
              (index) => GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: index == selectedIndex
                    ? Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                list[index]["icon"],
                                color: Colors.green,
                              ),
                            ],
                          ),
                          Text(
                            list[index]["name"],
                            style: const TextStyle(color: Colors.green),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                list[index]["icon"],
                              ),
                            ],
                          ),
                          Text(
                            list[index]["name"],
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
