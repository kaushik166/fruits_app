import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List<Map<String, dynamic>> list = [
    {
      "name": "Grapes",
      "price": "160 per/kg",
      "image": "assets/images/fr.png",
      "isSelected": 1,
      "isAdded": false
    },
    {
      "name": "Apricots",
      "price": "180 per/kg",
      "image": "assets/images/frt.png",
      "isSelected": 1,
      "isAdded": false
    },
    {
      "name": "Broccoli",
      "price": "190 per/kg",
      "image": "assets/images/broccoli.png",
      "isSelected": 1,
      "isAdded": false
    },
    {
      "name": "Onion",
      "price": "130 per/kg",
      "image": "assets/images/Onions.png",
      "isSelected": 1,
      "isAdded": false
    },
    {
      "name": "Anjeer",
      "price": "260 per/kg",
      "image": "assets/images/anjeer.png",
      "isSelected": 1,
      "isAdded": false
    },
    {
      "name": "Anjeer",
      "price": "260 per/kg",
      "image": "assets/images/anjeer.png",
      "isSelected": 1,
      "isAdded": false
    },
    {
      "name": "Anjeer",
      "price": "260 per/kg",
      "image": "assets/images/anjeer.png",
      "isSelected": 1,
      "isAdded": false
    },
  ];
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Color(0xff69A03A),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Favourite",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: List.generate(
                  list.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                list[index]["image"],
                                height: 90,
                                width: 80,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index]["name"],
                                    style: TextStyle(
                                        fontFamily: "poppins",
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Pick up from organic farms",
                                    style: TextStyle(
                                        fontFamily: "poppins",
                                        color: Colors.grey),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        size: 17,
                                        color: Color(0xffe9ab5f),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          list[index]["isSelected".toString()] =
                                              list[index][
                                                      "isSelected".toString()] -
                                                  1;
                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 17,
                                          width: 17,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black54)),
                                          child: Icon(
                                            Icons.remove,
                                            size: 12,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                          list[index]["isSelected"].toString()),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          list[index]["isSelected".toString()] =
                                              list[index][
                                                      "isSelected".toString()] +
                                                  1;
                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 17,
                                          width: 17,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black54)),
                                          child: Icon(
                                            Icons.add,
                                            size: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  list[index]["price"],
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    list[index]["isAdded"] = true;
                                    setState(() {});
                                  },
                                  child: list[index]["isAdded"]
                                      ? Text(
                                          "Added",
                                          style: TextStyle(
                                              fontFamily: "poppins",
                                              fontWeight: FontWeight.w500),
                                        )
                                      : Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xffCC7D00),
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          child: Center(
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  fontFamily: "poppins",
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                      ],
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
}
